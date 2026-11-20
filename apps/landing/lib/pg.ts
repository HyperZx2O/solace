import { Pool } from "pg";

let pool: Pool | undefined;

/** Shared Postgres pool for the waitlist routes. One per function instance. */
export function db(): Pool {
  const connectionString = process.env.WAITLIST_DATABASE_URL;
  if (!connectionString) throw new Error("WAITLIST_DATABASE_URL is not set");
  pool ??= new Pool({ connectionString, max: 3, connectionTimeoutMillis: 5000 });
  return pool;
}
