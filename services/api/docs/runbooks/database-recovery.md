# Runbook: database recovery

Applies to a lost or corrupted PostgreSQL instance. Redis is disposable; do not
restore Redis.

## Before anything

1. Declare severity. If the API cannot read alerts, this is **S1**.
2. Put the service into maintenance (stop the API) so no writes race the
   restore.
3. Snapshot the current volume before touching it. A failed restore that
   destroys the evidence is worse than downtime.

## Restore to a new instance (preferred)

1. Provision a new PostgreSQL 16 instance with the same major version.
2. Restore the most recent base backup, then replay WAL to the chosen
   point in time. Choose the latest point that is before the bad event.
3. Create the roles and grants, in this order:
   - `Solace` (owner) with the password from the secret manager;
   - `Solace_app` with `NOSUPERUSER NOCREATEDB NOCREATEROLE`.
4. Apply migrations as the owner: `MIGRATION_DATABASE_URL=... npm run db:deploy`.
5. Re-apply the append-only grants if the base backup predates that migration
   (the migration itself does this; verify with the queries below).
6. Point `DATABASE_URL` at the new instance, start the API, check `/ready`.
7. Smoke test: `/v1/crisis/resources`, one alert read as a therapist, one
   append-only insert.

## Verify the append-only guarantee survived

```sql
SELECT grantee, table_name, privilege_type
FROM information_schema.role_table_grants
WHERE grantee = 'Solace_app'
  AND table_name IN ('consent_records','alert_events','access_log',
                     'crisis_events','safety_team_flags')
ORDER BY table_name, privilege_type;
```

There must be no `UPDATE`, `DELETE` or `TRUNCATE` row. Then run:

```bash
npm test -- append-only
```

## Point-in-time decisions

- **Bad deploy wrote wrong data:** restore to just before the deploy, then let
  the reconciler re-enqueue open alerts.
- **Deleted data:** restore to just before the delete. Consent and audit rows
  must come back; they cannot be reconstructed from memory.
- **Ransomware / unknown corruption:** restore the newest verified backup and
  accept the data loss window. Record the window in the incident.

## After recovery

- Reconcile every open crisis alert by hand: state, last event, whether the
  therapist was actually contacted.
- Run the full test suite against the restored database.
- Run a fresh restore drill and record the date, duration and gaps here.

## Drill log

| Date                                   | Backup source | Restore duration | Verified by | Notes |
| -------------------------------------- | ------------- | ---------------- | ----------- | ----- |
| _(none yet — hosting undecided, OD-8)_ |               |                  |             |       |
