# Solace API

Backend for Solace, a trauma-recovery companion app. The API owns every clinical
and safety decision: crisis detection, alert state, therapist access, consent and
privacy operations. The Flutter client is untrusted and never decides a tier or a
state.

Current status: **CP1 implemented and tested** (auth and sessions, consent with
append-only history and two-step withdrawal, PHQ-9 surveys with server-side scoring,
the encrypted safety plan, devices and notification preferences). Modules for
CP2–CP5 (crisis, therapist connections, tasks, journals, sync, privacy, restriction,
stage) exist in the tree and many are wired to controllers, but they are **scaffolded
or partial** and are not yet covered by the CP2–CP5 test suites. Treat those surfaces
as in-progress, not shipped.

## Requirements

- Node.js 22 (`>=22 <23`), npm 10+
- Docker Desktop (local PostgreSQL 16 and Redis 7)

On Windows, PowerShell may block `npm.ps1`. Use `npm.cmd` and `npx.cmd`, or set
`Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`.

## Setup

```bash
cd services/api
cp .env.example .env          # never commit .env
npm ci                        # postinstall runs prisma generate
docker compose -f docker-compose.dev.yml up -d
npm run db:deploy             # apply migrations as the owner role
npm run db:seed               # synthetic development fixtures
npm run start:dev
```

Then:

```bash
curl http://localhost:3000/health
curl http://localhost:3000/ready
```

Both return the standard envelope. `/ready` returns 503 when PostgreSQL or Redis
is unreachable.

The seed creates two synthetic accounts, both with the development-only password
`Solace-dev-password-not-real`:

- `patient@example.invalid` — patient with the standard PHQ-9, one completed result,
  six consent records and `journalPrivacy=full_access` so it can exercise withdrawal.
- `therapist@example.invalid` — therapist, used by later checkpoints.

These are fixtures, never credentials for a real deployment.

## Commands

| Command                           | Purpose                                                      |
| --------------------------------- | ------------------------------------------------------------ |
| `npm run start:dev`               | Run from TypeScript                                          |
| `npm run build` / `npm start`     | Compile to `dist/` and run it                                |
| `npm test`                        | Unit + integration + contract tests (needs the Docker stack) |
| `npm run typecheck`               | `tsc --noEmit`                                               |
| `npm run lint` / `npm run format` | ESLint / Prettier                                            |
| `npm run contract:lint`           | Spectral on `openapi.yaml` (must be zero errors)             |
| `npm run db:migrate`              | Create and apply a migration (development)                   |
| `npm run db:deploy`               | Apply committed migrations (staging/production)              |

## Configuration

Every variable is validated at startup by `src/config/config.ts`. A missing or
invalid value fails the boot with a message naming each problem, before the HTTP
server listens. There is no "start with defaults and hope" path.

Safety values are locked in production: `FRESHNESS_WINDOW_HOURS=2`,
`INVITE_TTL_HOURS=48`, `PAUSE_CAP_DAYS=14`, `TIMER_SCALE=1`,
`ACCESS_TOKEN_TTL_MIN=15`. Production refuses to start if any differs.

Two database URLs are used on purpose:

- `DATABASE_URL` — restricted runtime role `Solace_app`.
- `MIGRATION_DATABASE_URL` — owner role, migrations and seed only.

This is a documented deviation from the plan's config table: without it the
append-only grants would be unenforceable by the role the service actually uses.

## Layout

```
src/
  config/            env validation, fail-fast
  common/            envelope, errors, redaction, logger, Prisma, Redis,
                     request id, validation pipe, filter, interceptor, factories
  modules/
    health/          /health, /ready
    auth/            signup, login, refresh rotation, sessions, guards
    consent/         items, append-only history, two-step withdrawal
    surveys/         PHQ-9 definitions, scoring, results, retake cooldown
    safety-plan/     AES-256-GCM fields, sharing flag, field-4 exclusion
    notifications/   device tokens, derived notification preferences
    crisis/          alert state machine (pure)
    therapist/       connection state machine (pure)
prisma/              schema, migrations, seed
test/                unit, integration, contract (Ajv against openapi.yaml)
docs/                architecture, requirements, database, integrations,
                     ADRs, runbooks
openapi.yaml         the client contract (v0.1 candidate)
```

## Rules that are not negotiable

1. No sensitive field reaches a log line (`src/common/redaction.ts`, tested).
2. Append-only tables are enforced by database privileges, not only by code.
3. The AI is advisory. Tier 3 comes from deterministic rules, first (ADR-4).
4. The server decides alert state, stage, restriction level, role and task
   selection. Unknown request fields are rejected.
5. A therapist sees a patient only through an active connection; otherwise 404.
6. Crisis history is kept 24 months; consent records indefinitely.

## Documentation

- `docs/architecture.md` — shape, trust boundaries, failure modes
- `docs/requirements.md` — requirement IDs and status
- `docs/database.md` — roles, append-only, retention, migrations
- `docs/integrations.md` — AI, push, email, SMS, Sentry
- `docs/adr/` — ADR-001 … ADR-010
- `docs/runbooks/` — crisis escalation, database recovery, secret rotation

`docs/spec/Solace-spec.md` and `plan-frontend.md` are referenced by the build
plan but are not in this repository. Requirements derived from the plan alone are
tagged `[ASSUMPTION]` in `docs/requirements.md`.
