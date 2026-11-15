import { Client } from 'pg';

/**
 * Global Rule 5: append-only tables are enforced by the database, not only by
 * code. This test connects as the restricted runtime role and proves that
 * UPDATE and DELETE are refused with 42501 (insufficient_privilege).
 *
 * Requires the dev stack: docker compose -f docker-compose.dev.yml up -d
 * and the migrations applied.
 */
const APPEND_ONLY_TABLES = [
  'consent_records',
  'alert_events',
  'access_log',
  'crisis_events',
  'safety_team_flags',
] as const;

const appUrl = process.env.DATABASE_URL;
const ownerUrl = process.env.MIGRATION_DATABASE_URL;

describe('append-only tables (database level)', () => {
  const app = new Client({ connectionString: appUrl });
  const owner = new Client({ connectionString: ownerUrl });

  beforeAll(async () => {
    try {
      await owner.connect();
      await app.connect();
    } catch (error) {
      throw new Error(
        `PostgreSQL is required for this test. Start the dev stack, then run ` +
          `\`npm run db:deploy\`. Underlying error: ${(error as Error).message}`,
      );
    }
  });

  afterAll(async () => {
    await Promise.allSettled([app.end(), owner.end()]);
  });

  it('confirms both roles are connected and distinct', async () => {
    const appRole = await app.query<{ current_user: string }>('SELECT current_user');
    const ownerRole = await owner.query<{ current_user: string }>('SELECT current_user');
    expect(appRole.rows[0].current_user).toBe('Solace_app');
    expect(ownerRole.rows[0].current_user).toBe('Solace');
  });

  it.each(APPEND_ONLY_TABLES)('refuses UPDATE on %s for the application role', async (table) => {
    await expect(app.query(`UPDATE ${table} SET id = id`)).rejects.toMatchObject({
      code: '42501',
    });
  });

  it.each(APPEND_ONLY_TABLES)('refuses DELETE on %s for the application role', async (table) => {
    await expect(app.query(`DELETE FROM ${table}`)).rejects.toMatchObject({
      code: '42501',
    });
  });

  it('still allows the migration owner role to read them', async () => {
    for (const table of APPEND_ONLY_TABLES) {
      const result = await owner.query(`SELECT count(*)::int AS n FROM ${table}`);
      expect(result.rows[0].n).toBeGreaterThanOrEqual(0);
    }
  });

  it('allows INSERT into consent_records (append is the only write)', async () => {
    const user = await owner.query<{ id: string }>(
      `INSERT INTO users (id, role, status, created_at, updated_at)
       VALUES (gen_random_uuid(), 'patient', 'active', now(), now()) RETURNING id`,
    );
    const userId = user.rows[0].id;
    await app.query(
      `INSERT INTO consent_records (id, user_id, item, granted, source, recorded_at)
       VALUES (gen_random_uuid(), $1, 'crisis_detection', true, 'onboarding', now())`,
      [userId],
    );
    // Cleanup runs as the owner (migration) role: the runtime role has no DELETE
    // grant, which is the whole point of the test above. Consent rows are
    // append-only in production; this is a test fixture.
    await owner.query('DELETE FROM consent_records WHERE user_id = $1', [userId]);
    await owner.query('DELETE FROM users WHERE id = $1', [userId]);
  });
});
