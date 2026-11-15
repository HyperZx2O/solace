import { ConfigError, loadConfig } from '../../src/config/config';

const validEnv = (): NodeJS.ProcessEnv => ({
  NODE_ENV: 'development',
  PORT: '3000',
  DATABASE_URL: 'postgresql://app:app@localhost:5432/Solace',
  MIGRATION_DATABASE_URL: 'postgresql://owner:owner@localhost:5432/Solace',
  REDIS_URL: 'redis://localhost:6379',
  JWT_ACCESS_SECRET: 'a'.repeat(32),
  JWT_REFRESH_SECRET: 'b'.repeat(32),
  FIELD_ENCRYPTION_KEY_REF: 'dev://key',
  RESOURCES_VERIFIED_AT: '2026-10-24T00:00:00.000Z',
});

function problemsFrom(env: NodeJS.ProcessEnv): string[] {
  try {
    loadConfig(env);
    return [];
  } catch (error) {
    if (error instanceof ConfigError) return [...error.problems];
    throw error;
  }
}

describe('config', () => {
  it('loads a valid environment and freezes the result', () => {
    const config = loadConfig(validEnv());
    expect(config.nodeEnv).toBe('development');
    expect(config.port).toBe(3000);
    expect(config.inviteTtlHours).toBe(48);
    expect(config.freshnessWindowHours).toBe(2);
    expect(config.pauseCapDays).toBe(14);
    expect(Object.isFrozen(config)).toBe(true);
  });

  it('names every missing required variable at once', () => {
    const env = validEnv();
    delete env.DATABASE_URL;
    delete env.REDIS_URL;
    const problems = problemsFrom(env);
    expect(problems.join('\n')).toMatch(/DATABASE_URL is required/);
    expect(problems.join('\n')).toMatch(/REDIS_URL is required/);
  });

  it('rejects short secrets', () => {
    const env = validEnv();
    env.JWT_ACCESS_SECRET = 'short';
    expect(problemsFrom(env).join('\n')).toMatch(/JWT_ACCESS_SECRET must be at least 32/);
  });

  it('rejects a non-postgres database url', () => {
    const env = validEnv();
    env.DATABASE_URL = 'mysql://localhost/Solace';
    expect(problemsFrom(env).join('\n')).toMatch(/DATABASE_URL must use one of/);
  });

  it('rejects a crisis timeout at or above the 2s target', () => {
    const env = validEnv();
    env.AI_CRISIS_TIMEOUT_MS = '2500';
    expect(problemsFrom(env).join('\n')).toMatch(/must stay under 2000ms/);
  });

  it('requires provider credentials in staging', () => {
    const env = validEnv();
    env.NODE_ENV = 'staging';
    const problems = problemsFrom(env).join('\n');
    expect(problems).toMatch(/AI_GROQ_API_KEY is required/);
    expect(problems).toMatch(/FCM_SERVICE_ACCOUNT_REF is required/);
    expect(problems).toMatch(/SENDGRID_API_KEY is required/);
    expect(problems).toMatch(/SMS_PROVIDER_KEY is required/);
  });

  it('refuses overridden safety values in production', () => {
    const env = validEnv();
    env.NODE_ENV = 'production';
    env.TIMER_SCALE = '60';
    env.FRESHNESS_WINDOW_HOURS = '6';
    env.INVITE_TTL_HOURS = '72';
    env.PAUSE_CAP_DAYS = '21';
    const problems = problemsFrom(env).join('\n');
    expect(problems).toMatch(/production refuses TIMER_SCALE/);
    expect(problems).toMatch(/production refuses FRESHNESS_WINDOW_HOURS/);
    expect(problems).toMatch(/production refuses INVITE_TTL_HOURS/);
    expect(problems).toMatch(/production refuses PAUSE_CAP_DAYS/);
  });

  it('allows the development timer scale', () => {
    const env = validEnv();
    env.TIMER_SCALE = '60';
    expect(loadConfig(env).timerScale).toBe(60);
  });
});
