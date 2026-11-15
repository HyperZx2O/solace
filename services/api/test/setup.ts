/**
 * Test bootstrap. Never points at a real provider. Integration tests read
 * TEST_DATABASE_URL and TEST_REDIS_URL and skip when they are absent.
 */
process.env.NODE_ENV = 'test';
process.env.PORT = process.env.PORT ?? '3000';
process.env.DATABASE_URL =
  process.env.DATABASE_URL ??
  'postgresql://Solace_app:Solace_app@localhost:5432/Solace?schema=public';
process.env.MIGRATION_DATABASE_URL =
  process.env.MIGRATION_DATABASE_URL ??
  'postgresql://Solace:Solace@localhost:5432/Solace?schema=public';
process.env.REDIS_URL = process.env.REDIS_URL ?? 'redis://localhost:6379';
process.env.JWT_ACCESS_SECRET =
  process.env.JWT_ACCESS_SECRET ?? 'test-access-secret-0123456789abcdef0123';
process.env.JWT_REFRESH_SECRET =
  process.env.JWT_REFRESH_SECRET ?? 'test-refresh-secret-0123456789abcdef0123';
process.env.FIELD_ENCRYPTION_KEY_REF = process.env.FIELD_ENCRYPTION_KEY_REF ?? 'test://key';
process.env.RESOURCES_VERIFIED_AT = process.env.RESOURCES_VERIFIED_AT ?? '2026-10-24T00:00:00.000Z';
process.env.LOG_LEVEL = process.env.LOG_LEVEL ?? 'error';
