# Implementation Plan for "Solace: Backend API"

> **How to use this file**
> This is the backend plan for Solace, a trauma-recovery companion app. It belongs to Person A (backend). A coding agent must read this file, and `plan-frontend.md`, before writing any code, and re-read the current phase before starting it. Where this plan says "PROPOSED", the decision is not final until the owner records it as Accepted in the ADR table.
>
> Companion documents live in the repo: the consolidated spec (`docs/spec/Solace-spec.md`) and the issues log (`docs/spec/issues-and-solutions.md`). If this plan and the spec disagree, the spec wins until an Open Decision below resolves the conflict and the spec is updated.

---

## Project Overview

| Field | Value |
|---|---|
| Project Name | Solace: Backend API (`services/api`) |
| Project Type | Backend Service |
| Primary Language(s) | TypeScript on Node.js 22 LTS |
| Framework(s) | NestJS (modular monolith), Prisma ORM, BullMQ for scheduled and delayed jobs |
| Target Platform | Linux container. Clients are the Android app (MVP), then iOS and desktop (later) |
| Deployment Target | **Not yet decided.** The spec names AWS (ECS, RDS, ElastiCache, S3, CloudWatch). See Open Decision OD-8 |
| Team / Owner | Person A, backend owner: [Name] |
| Status | CP1 implemented and tested. CP2–CP5 modules scaffolded/partial; not signed off by their test suites. |

### What this service does, in one paragraph

The backend is the only place that makes clinical or safety decisions. It owns accounts and sessions, consent records, the crisis detection pipeline and its alert lifecycle, the escalation timers that notify therapists and emergency organisations, the therapist connection gates, the restriction and stage state, the task library and AI task selection, and every access log. It also holds the therapist's read-only view of patient data. It never sends patient content to anyone except the AI providers named in the DPA, and it never lets the client decide an alert state.

---

## Dependencies

> Filled during planning. Update when a dependency changes.

**What this plan depends on (inputs from others)**

| My Task | Depends On | Owner | Must Complete Before I Can |
|---|---|---|---|
| Crisis rules (Tier 1/2/3 triggers, explicit-language list) | Clinical reviewer sign-off on the rule set (Issue 24). Rules are PROVISIONAL until then | Named licensed therapist (external) | Enabling crisis detection for real patients (Gate 1) |
| AI provider calls (Groq, then Cerebras, then OpenRouter) | Signed DPA with each provider: no retention, no training, no human review, deletion on termination (spec 14.9) | Project owner | Sending any real journal data to an AI provider. Synthetic data only until then |
| Therapist licence verification | Manual check process against the official BD registry (spec 8.2) | Project owner + ops | Activating any real therapist connection |
| Tier 3 organisation SMS escalation | Confirm each organisation accepts inbound SMS (spec 10.5) | Project owner | Hour-6 escalation going live. Fallback is a dialer link only |
| Push delivery | Firebase project and FCM credentials | Person A | Any device-level notification test |
| SMS and email delivery | SMS provider and SendGrid accounts, with DPAs | Project owner | Therapist alerts by SMS or email |
| Mentor decisions | OD-1 to OD-13 in this plan | Mentor and team | Contract freeze (CP0) |

**What others depend on from this plan (outputs)**

| My Output | Checkpoint | Who Needs It | Must Be Done Before They Can |
|---|---|---|---|
| `services/api/openapi.yaml` v0.1, frozen | CP0 | Person B (frontend) | Generating the Dart client and any real screen |
| Auth, sessions, consent, surveys, safety plan | CP1 | Person B | Onboarding on real data |
| Crisis check, self-initiated crisis, alert lifecycle, escalation, resources, sync | CP2 | Person B | Crisis screen, offline sync, Gate 1 tests |
| Therapist onboarding, invites, connections, patient list, alert view and resolve | CP3 | Person B | Therapist role UI on real data |
| Tasks, check-ins, journals, restriction, notifications | CP4 | Person B | Home, tasks, journals on real data |
| Hardening and Gate 1 sign-off | CP5 | Both | Any release candidate APK |

---

## Global Rules

These rules apply to every phase and every coding agent working on this service. They are non-negotiable.

1. **Never implement a future phase early.** If a later checkpoint needs a feature, wait for it.
2. **The contract is the interface.** Never add, rename or remove an endpoint, field or enum value without a pull request that changes `services/api/openapi.yaml`, reviewed by Person B.
3. **The server is the only source of alert state, timers, restriction level, stage and task selection.** Never trust a client-supplied value for any of them.
4. **Never log sensitive content** at any level: journal text, safety plan fields, patient or therapist names beyond IDs, emails, phone numbers, tokens, or passwords. The logger has a redaction list and tests that prove it.
5. **Audit and consent tables are append-only.** The application database role has no `UPDATE` or `DELETE` on `consent_records`, `alert_events`, `access_log`, `crisis_events`, or `safety_team_flags`. Enforce this in the database, not only in code.
6. **No OpenAI, ever.** All AI calls go through `src/modules/ai/` only. No other module imports a provider SDK.
7. **Safety-critical code needs two reviewers.** Changes under `src/modules/crisis/`, `consent/`, `therapist/connections/`, `access-log/`, or any escalation timer code need approval from Person A and Person B.
8. **Crisis endpoints are never rate-limited into silence.** Rate limits apply to everything except the crisis check and self-initiated crisis endpoints, which always accept requests.
9. **Patient-visible copy never claims a notification happened** unless the alert state is `delivered` or later. Degraded or failed states are reported to the therapist and safety team, not hidden and not announced to the patient as a failure.
10. **Distinguish implemented features from planned ones** at all times. Never present a stub as complete. Mark stubs with `[PLANNED]` in code comments and docs.
11. **Fail toward safety.** When a rule is ambiguous (for example, a timestamp that could be old or new), treat the event as the more protective case, unless an Open Decision says otherwise.

---

## Open Decisions

> These must be resolved before CP0 is frozen. Each has a proposed default taken from the spec or issues log. A decision is closed only when the owner records the answer in the ADR table below and updates the spec.

| ID | Question | Conflict in sources | Proposed default | Blocks |
|---|---|---|---|---|
| OD-1 | Offline freshness window | B04 says 6h; N06 says 2h | **2 hours** (later note) | Sync endpoint, CP2 |
| OD-2 | Invite expiry | B06 says 72h; N03 says 48h | **48 hours** (later note) | Invites, CP3 |
| OD-3 | Minimum age | Original spec 16+; Issue 23 says 18+ | **18+**. Under 18 blocked at signup | Signup, CP1 |
| OD-4 | Does the Personal Journal get safety-signal scanning? | Issue 16 says no AI analysis; Issues 17 and 18 say scanning always runs | **Crisis-language scan only** on the Personal Journal. No sentiment, no personalisation, never visible to a therapist. The onboarding wording must match exactly | Journal pipeline, CP4 |
| OD-5 | Which escalation copy is correct? | Therapist copy says Tier 2 escalates at 2h; the timer escalates at 6h | **Timer governs.** 2h is the third urgent notification. Organisation SMS at 6h. Copy aligned to the timer | Notification copy, CP2 |
| OD-6 | Restriction timer pause cap | Spec says 14 to 21 days | **14 days** | Restriction logic, CP4 |
| OD-7 | "No recent activity" threshold for the therapist's unknown group | Undefined | **3 days**, matching the inactivity notification rule | Patient grouping, CP3 |
| OD-8 | Backend hosting for MVP | Spec names AWS; no budget or ops owner stated | Decide before CP5. Options: AWS per spec, or a simpler container host for MVP, provided the same DPA and region rules apply | Deployment, Phase 15 |
| OD-9 | Clock source for offline creation timestamps | Not specified | Store both `clientCreatedAt` (device) and `serverReceivedAt`. Run the full crisis flow when **either** timestamp is inside the window. Explicit Tier 3 language always notifies the therapist once, even if historical. Only escalation timers are skipped for historical entries. **This is the team's proposal. It needs clinical confirmation** | Sync, CP2 |
| OD-10 | Does a PHQ-9 item 9 (self-harm) answer create a therapist alert? | Spec only shows an in-app overlay | Record it and show it to the therapist as a **"possible concern"** flag, not a Tier 3 alert. Needs clinical confirmation | Survey scoring, CP1 |
| OD-11 | Can one person be both patient and therapist? | Spec does not say | **Two separate accounts**, two logins. Not in MVP | Accounts, CP1 |
| OD-12 | Does the Tier 3 deterministic detector run without the AI? | Spec says Tier 3 is "rule-based" (B09) but also sub-2s AI detection | **Yes.** Rule-based Tier 3 runs first and independently. AI adds Tier 1 and 2 signals only | Crisis pipeline, CP2. Needs mentor confirmation of B09 |
| OD-13 | Is the notification to organisations neutral? | Spec says neutral for trusted contact, unspecified for organisations | Organisation SMS contains only: "[Solace] A user needs support. Callback: [number]". No clinical detail. Needs legal review | Escalation SMS, CP2 |

### Architecture Decision Records (ADR)

Every significant decision is recorded here. Status is `Accepted` only after the owner agrees.

#### ADR-1: Modular monolith on NestJS
- **Date:** 2026-10-23
- **Status:** Accepted (spec section 16)
- **Context:** Compliance-heavy codebase, small team, two-month build.
- **Decision:** One NestJS deployable with clean module boundaries. No microservices or Kubernetes at launch.
- **Alternatives considered:** Fastify (rejected in spec for weaker enforced structure). Microservices (rejected for team size).
- **Consequences:** Simple deployment. Module boundaries must be enforced by lint rules, or they will erode.

#### ADR-2: Contract-first API with OpenAPI
- **Date:** 2026-10-23
- **Status:** Proposed. Accept at CP0
- **Context:** Frontend and backend are built by different people, and the frontend starts before the backend is complete.
- **Decision:** `services/api/openapi.yaml` is written first and frozen at CP0. The Dart client is generated from it. The backend validates requests and responses against it in tests.
- **Alternatives considered:** Code-first Swagger generated from NestJS (rejected: the frontend would wait for the backend).
- **Consequences:** Contract changes need a pull request reviewed by both. Slower for small changes, safer overall.

#### ADR-3: Alert state persisted in PostgreSQL, timers in BullMQ, reconciled on boot
- **Date:** 2026-10-23
- **Status:** Proposed
- **Context:** Escalation timers at 30 minutes, 2 hours and 6 hours must survive restarts (B01). Losing a timer means a crisis is never escalated.
- **Decision:** The alert row and its `alert_events` history live in PostgreSQL and are the source of truth. BullMQ delayed jobs in Redis fire the escalation steps. On boot, a reconciler reads every open alert and re-schedules any missing job. Each job is idempotent: it checks the alert state before acting.
- **Alternatives considered:** Timers only in Redis (rejected: a Redis eviction would lose state). Cron polling every minute (rejected: too coarse for the 30-minute step and adds lag).
- **Consequences:** Two places hold alert timing, so the reconciler and its tests are required before CP2 closes.

#### ADR-4: Tier 3 detection is rule-based and independent of the AI
- **Date:** 2026-10-23
- **Status:** Proposed. Needs mentor confirmation (OD-12)
- **Context:** Tier 3 must fire on explicit language even if the AI provider is slow or down (B02, B09).
- **Decision:** A deterministic detector with a versioned phrase list runs synchronously on every crisis check. The AI never delays or overrides a Tier 3 decision.
- **Alternatives considered:** AI-only detection (rejected: failure and latency risk). AI with rule fallback (rejected: adds a path where AI can suppress a rule hit).
- **Consequences:** The phrase list needs clinical review and versioning. Each version is stored with the crisis event.

#### ADR-5: AI provider chain behind one interface
- **Date:** 2026-10-23
- **Status:** Accepted (spec B03)
- **Context:** Provider availability and DPA status vary.
- **Decision:** Groq (primary), then Cerebras, then OpenRouter (Mistral). One `AiProvider` interface. OpenAI is permanently excluded.
- **Alternatives considered:** Single provider (rejected: no fallback). A specialised medical LLM (rejected in spec: no safety benchmark).
- **Consequences:** Every provider needs its own DPA before real data. Output is tested against the same fixtures for each provider.

#### ADR-6: Field-level encryption for journals and the safety plan
- **Date:** 2026-10-23
- **Status:** Proposed
- **Context:** Spec requires journals encrypted at rest in PostgreSQL, not S3 (spec 16). The safety plan is encrypted server-side too (spec 7.3).
- **Decision:** Journal text and safety plan fields are encrypted with AES-256-GCM before they reach the database, using a data key wrapped by a key-management service. Each row stores a key ID so rotation is possible.
- **Alternatives considered:** Database-level encryption only (rejected: anyone with a DB read can read the text). Client-side encryption only (rejected: the AI and therapist view need server access).
- **Consequences:** The key-management choice (OD-8 hosting) must be made before CP4. Key rotation needs a runbook.

#### ADR-7: Self-hosted JWT with rotating refresh tokens
- **Date:** 2026-10-23
- **Status:** Accepted for the token shape (spec 15). Reuse detection is Proposed
- **Context:** No third-party auth provider (spec 15).
- **Decision:** Access token 15 minutes. Refresh token 30 days, rotated on every use. If a rotated refresh token is presented again, revoke the whole session family and create a login alert.
- **Alternatives considered:** Long-lived access tokens (rejected: revocation is slow).
- **Consequences:** Refresh-token table and revocation list are required in CP1.

#### ADR-8: Role is set by the server, not chosen by the user
- **Date:** 2026-10-23
- **Status:** Proposed
- **Context:** The therapist role is native and in the same app (team decision, 2026-10-22). The spec forbids open therapist signup (spec 2, Issue 07).
- **Decision:** Patient accounts are created by signup. Therapist accounts are created only by accepting a patient invite and completing verification. The role is returned by `GET /v1/me` and the client routes on it. One account has one role (OD-11).
- **Alternatives considered:** A role picker at signup (rejected: it would offer "therapist" to people who were never invited).
- **Consequences:** Therapist accounts cannot exist before an invite. Test this path explicitly.

#### ADR-9: Clinical logic lives on the server only
- **Date:** 2026-10-23
- **Status:** Accepted (spec 5, 21)
- **Context:** The client is a phone app that can be modified, reinstalled or run on an old version.
- **Decision:** Stage, restriction level, task selection, alert state, escalation and grouping are computed only by the backend.
- **Consequences:** The app must work with degraded information. Offline behaviour is defined by the server contract.

#### ADR-10: Hosting and key management for MVP
- **Date:** 2026-10-23
- **Status:** Open (OD-8)
- **Context:** The spec names AWS. The MVP is an APK on GitHub, so the backend hosting decision is independent of distribution.
- **Decision:** Pending.
- **Consequences:** Blocks Phase 15 and ADR-6 key management.

---

## Technology Stack

| Layer | Choice | Justification |
|---|---|---|
| Language | TypeScript, Node.js 22 LTS | Spec 16. Shared language with the team's tooling |
| Framework | NestJS | Enforced module structure for a compliance-heavy codebase (spec 16) |
| Database | PostgreSQL (current supported major), via Prisma | Spec 16. Relational data with audit constraints |
| Cache and jobs | Redis, with BullMQ | Spec 16 names Redis for escalation timers and queues. BullMQ gives delayed jobs with retries |
| Authentication | Self-hosted JWT, argon2id password hashing (PROPOSED) | Spec 15. argon2id is the current recommended password hash |
| Real-time | REST first. WebSocket gateway optional in MVP (Phase 6) | Spec 16 names WebSocket. FCM is the delivery guarantee in MVP |
| Validation | class-validator DTOs at the boundary; typed domain objects inside | Template rule: manual validation at boundaries, no heavy schema library unless already present |
| Testing | Jest, Supertest, Testcontainers (real PostgreSQL and Redis) | Template rule: integration tests against real databases, not mocks |
| Contract testing | OpenAPI lint (Spectral) and response validation against the spec | ADR-2 |
| CI/CD | GitHub Actions, path-filtered to `services/api/` | Repo already on GitHub |
| Push | Firebase Cloud Messaging | Spec 16. Web Push is removed because the therapist side is native |
| Email | SendGrid | Spec 16 |
| SMS | Provider TBD (spec names an SMS provider without naming one) | Needs a DPA before use |
| Deployment | TBD (OD-8) | |
| Observability | pino structured logs with redaction. Sentry with scrubbing (spec 14.9). CloudWatch later | Spec 14.9 requires PII scrubbing before anything leaves the infrastructure |

---

## Dependency Management

- **Package manager:** npm, with `package-lock.json` committed. Do not use workspaces until a second Node package exists (repo decision, 2026-10-22).
- **Lock file committed:** Yes.
- **Rule for adding dependencies:** Each new package needs a line in the PR description: what it does, why it is needed, what it replaces, and its licence. Two reviewers for packages touching crypto, auth or queues.
- **Security audit cadence:** `npm audit --omit=dev` on every PR (fails on high or critical). Full audit before every release.
- **Known constraints:**
  - No GPL dependencies.
  - Node 22 LTS only.
  - No SDK for OpenAI.
  - No analytics or tracking SDK.
  - Every AI, email and SMS SDK must have a signed DPA before real data.

---

## Configuration & Environment

- All secrets and environment-specific values go in environment variables. Never committed.
- `.env.example` is committed and kept current.
- One `src/config/config.ts` loads and validates every variable at startup. Missing or invalid required variables stop the process with a clear message.
- Production refuses to start if any safety default is overridden (for example, escalation timers shorter than the spec values). Development may shorten timers through `TIMER_SCALE` only, and the flag is ignored in production.

| Variable | Required | Default | Description |
|---|---|---|---|
| `NODE_ENV` | Yes | none | `development`, `test`, `staging`, `production` |
| `PORT` | No | `3000` | HTTP port |
| `DATABASE_URL` | Yes | none | PostgreSQL connection string |
| `REDIS_URL` | Yes | none | Redis connection string |
| `JWT_ACCESS_SECRET` | Yes | none | Signs access tokens (secret, never committed) |
| `JWT_REFRESH_SECRET` | Yes | none | Signs refresh tokens (secret) |
| `ACCESS_TOKEN_TTL_MIN` | No | `15` | Access token lifetime in minutes |
| `REFRESH_TOKEN_TTL_DAYS` | No | `30` | Refresh token lifetime in days |
| `FIELD_ENCRYPTION_KEY_REF` | Yes | none | Reference to the wrapped data key (KMS ARN or secret name). Not the key itself |
| `AI_GROQ_API_KEY` | Yes in staging and production | none | Primary AI provider |
| `AI_CEREBRAS_API_KEY` | No | none | First fallback |
| `AI_OPENROUTER_API_KEY` | No | none | Second fallback |
| `AI_CRISIS_TIMEOUT_MS` | No | `1800` | Timeout for the crisis path. Must stay under the 2s target |
| `FCM_SERVICE_ACCOUNT_REF` | Yes in staging and production | none | Reference to Firebase credentials |
| `SENDGRID_API_KEY` | Yes in staging and production | none | Therapist invite and alert email |
| `SMS_PROVIDER_KEY` | Yes in staging and production | none | Therapist and organisation SMS |
| `SENTRY_DSN` | No | none | Error reporting. Scrubbing is mandatory when set |
| `LOG_LEVEL` | No | `info` | `debug`, `info`, `warn`, `error` |
| `CORS_ORIGINS` | No | empty | Empty by default. The mobile app is not a browser client. Only the admin tool, if any, is listed |
| `INVITE_TTL_HOURS` | No | `48` | OD-2 |
| `FRESHNESS_WINDOW_HOURS` | No | `2` | OD-1 |
| `PAUSE_CAP_DAYS` | No | `14` | OD-6 |
| `TIMER_SCALE` | No | `1` | Development only. Ignored when `NODE_ENV=production` |
| `RESOURCES_VERIFIED_AT` | Yes | none | Last verification date for crisis resources, shown to the client |

---

## Project-Type Guidance

**Phases skipped for this project:** None. Phase 6 (real-time) is optional in MVP: the WebSocket gateway is built only if the therapist app needs live updates. FCM plus fetch-on-open covers MVP delivery. Phase 15 is blocked until OD-8 is decided.

---

## Folder Structure

```
services/api/
├── src/
│   ├── main.ts
│   ├── app.module.ts
│   ├── config/
│   │   └── config.ts                    # fail-fast env validation
│   ├── common/
│   │   ├── envelope.ts                  # success/error response shape
│   │   ├── errors.ts                    # error code registry
│   │   ├── filters/                     # global exception filter
│   │   ├── guards/                      # auth, role, reauth guards
│   │   └── redaction.ts                 # log field redaction list
│   ├── modules/
│   │   ├── auth/                        # signup, login, sessions, login alerts
│   │   ├── consent/                     # consent items, two-step withdrawal, history
│   │   ├── surveys/                     # PCL-5, PHQ-9, GAD-7, IES-R, scoring, retake cooldown
│   │   ├── safety-plan/                 # five fields, sharing flag, field 4 exclusion
│   │   ├── crisis/                      # detector, tiers, alert lifecycle, escalation
│   │   ├── sync/                        # offline items, freshness, dedupe
│   │   ├── therapist/                   # onboarding, verification, invites, connections, alert view
│   │   ├── patients/                    # therapist patient list, priority grouping, summaries
│   │   ├── restriction/                 # levels, timers, pause cap
│   │   ├── stage/                       # internal stage, approval hold
│   │   ├── tasks/                       # library, selection, swap, feedback
│   │   ├── checkins/                    # daily check-in
│   │   ├── journal/                     # recovery and personal journals, privacy setting
│   │   ├── ai/                          # provider interface, chain, queue, AI metadata log
│   │   ├── notifications/               # devices, preferences, scheduling, frequency rules
│   │   ├── access-log/                  # append-only patient-facing access log
│   │   ├── privacy/                     # export, pause processing, deletion requests
│   │   ├── safety-team/                 # internal flags for failed analyses and possible concerns
│   │   └── resources/                   # crisis resources with verification dates
│   └── jobs/                            # BullMQ workers: escalation, restriction tick, inactivity, retention
├── prisma/
│   ├── schema.prisma
│   ├── migrations/                      # versioned, never edited after applied
│   └── seed/                            # synthetic data only
├── test/
│   ├── unit/
│   ├── integration/                     # real PostgreSQL and Redis via Testcontainers
│   ├── contract/                        # responses validated against openapi.yaml
│   └── safety/                          # Gate 1 scenario suite (S1 to S16), shared with frontend
├── openapi.yaml                         # the contract. Frozen at CP0
├── docs/
│   ├── architecture.md
│   ├── adr/
│   ├── integrations.md
│   ├── database.md
│   └── runbooks/
│       ├── escalation-stalled.md
│       ├── ai-provider-down.md
│       └── organisation-sms-failed.md
├── .env.example
├── package.json
├── package-lock.json
└── README.md
```

---

## Phase Checklist

- [ ] Phase 0: Requirements & Architecture
- [ ] Phase 1: Repository Scaffold & Project Skeleton
- [ ] Phase 2: Core Domain / Data Model
- [ ] Phase 3: Primary Interface (REST contract and endpoints)
- [ ] Phase 4: Computed Data (priority groups, summaries, mood series)
- [ ] Phase 5: Business Logic Layer (rules, state machines, scheduled jobs)
- [ ] Phase 6: Real-Time Layer *(optional in MVP)*
- [ ] Phase 7: Persistence
- [ ] Phase 8: External Integrations
- [ ] Phase 9: Validation, Error Handling & Observability
- [ ] Phase 10: Security
- [ ] Phase 11: Testing (including the Gate 1 safety suite)
- [ ] Phase 12: Performance Optimization
- [ ] Phase 13: CI/CD & Code Quality
- [ ] Phase 14: Documentation
- [ ] Phase 15: Deployment & Release *(blocked on OD-8)*
- [ ] Phase 16: Refactoring & Cleanup

### Checkpoints (delivery order)

| CP | Scope | Frontend can start |
|---|---|---|
| CP0 | `openapi.yaml` v0.1 frozen: envelope, error codes, enums (alert states, tiers, consent items, survey items, restriction levels), and shapes for every endpoint group | Client generation and mocks |
| CP1 | Auth, sessions, consent, surveys, safety plan, devices | Onboarding on real data |
| CP2 | Crisis: check endpoint, self-initiated crisis, Tier 2 consent, alert lifecycle, escalation, resources, sync | Crisis screen, offline sync, Gate 1 client tests |
| CP3 | Therapist: onboarding, invites, connections, patient list, alert view, review, undo, resolve, summary | Therapist role |
| CP4 | Tasks, check-ins, journals, restriction, stage, AI selection and scans, notification scheduling | Home, tasks, journals |
| CP5 | Hardening: rate limits, retention jobs, export, breach hooks, Gate 1 sign-off | Release candidate |

Each checkpoint is one or more pull requests into `main`. The frontend branch rebases onto `main` before each of its own pull requests.

---

## Phase 0 – Requirements & Architecture

### Goals

- Lock the decisions that the contract depends on.
- Record the architecture so the frontend person can plan against it.
- Name every safety rule that the code must enforce, and where it lives.

### Tasks

1. Write the one-paragraph description (see Project Overview). Confirm it matches the spec.
2. Functional requirements: take the feature list from the spec sections 6 to 13 and 14, grouped by module. Each requirement gets an ID (for example `REQ-CRISIS-03`) so tests can reference it.
3. Non-functional requirements:
   - Crisis check endpoint: p95 under 2 seconds, with the timeout set by `AI_CRISIS_TIMEOUT_MS` (spec 5.6).
   - Journal save: always succeeds, even when the AI is down (B02).
   - Availability: the crisis endpoint must accept requests even when the rest of the service is degraded.
   - Data residency and DPA status recorded per provider.
4. Out of scope for this version: see the Out of Scope section.
5. Architecture diagram saved to `services/api/docs/architecture.md`. Update spec section 3 at the same time to remove the therapist web app and show one Flutter client.
6. External dependencies and failure modes, in `docs/integrations.md`:
   - AI providers: timeout, rate limit, outage, DPA status.
   - FCM: delivery failure, token expiry.
   - SMS and email: failure, bounce.
   - Organisation phone numbers: changed, unreachable, no inbound SMS.
7. Record ADR-1 to ADR-10 (see above) and close each Open Decision.
8. High-level data model: entities and relationships (see Phase 2).
9. Naming, folder structure and code style agreed (see Folder Structure).

### Acceptance Criteria

- [ ] OD-1 to OD-13 each have a recorded answer in this file.
- [ ] Architecture diagram exists in `services/api/docs/architecture.md`, and spec section 3 matches it.
- [ ] Every external dependency has a documented failure mode.
- [ ] ADR-1 to ADR-10 each have a status. None are left as "Proposed" when CP0 is frozen, except ADR-10, which closes at Phase 15.
- [ ] Both people can answer "what does this service do?" in one sentence.

### Common Pitfalls

- Letting the spec's "decision-support" wording describe Tier 3 when Tier 3 is automatic (B09). Describe it as a rule-based trigger.
- Leaving a conflict between sources unresolved and building on one side of it.

### AI Agent Guidance

> Read this phase fully before creating any file. If a requirement is ambiguous, list the assumption under the relevant Open Decision and stop. Do not guess a clinical threshold. Thresholds come from the clinical reviewer.
>
> **Verification rule that applies to every phase:** After every file you create or modify, run (1) the relevant test or type check for that file, and (2) the full test suite. Report both results before touching the next file. Do not proceed if either fails.

---

## Phase 1 – Repository Scaffold & Project Skeleton

### Goals

- A bootable NestJS service with the folder structure above and no business logic.
- Local development with PostgreSQL and Redis in containers.
- Config fails fast on missing values.

### Tasks

1. Create `services/api/` with `package.json` and `package-lock.json`. Node 22 pinned in `.nvmrc` and `engines`.
2. Install NestJS, Prisma, BullMQ, pino, class-validator, and the test tools. Install nothing else.
3. `src/config/config.ts`: validate every variable in the Configuration table. Export one frozen object. Refuse to start in production if a safety default is overridden.
4. `src/common/redaction.ts`: the list of log fields that must never appear. Include `password`, `token`, `email`, `phone`, `journalText`, `safetyPlan`, `firstName`, `lastName`, `dob`, `licenceNumber`.
5. Logger: pino, JSON in production, pretty in development, redaction applied. Test that a logged object containing `journalText` emits `[REDACTED]`.
6. `GET /health` returns `200 { "success": true, "data": { "status": "ok" }, "timestamp": "...", "error": null }`. `GET /ready` checks PostgreSQL and Redis and returns `503` with the standard envelope if either is unreachable.
7. `docker-compose.dev.yml` with PostgreSQL and Redis. `.env.example` lists every variable.
8. ESLint and Prettier configured. Zero warnings on the scaffold.

### Acceptance Criteria

- [ ] `npm ci` completes with no errors.
- [ ] `npm run start:dev` boots with a valid `.env`.
- [ ] Starting without `DATABASE_URL` exits non-zero with a message naming the missing variable.
- [ ] `GET /health` returns the envelope with `200`.
- [ ] A redaction test proves `journalText` never reaches the log output.
- [ ] `.env` is gitignored. `.env.example` is committed.
- [ ] Linter passes with zero warnings.

### Common Pitfalls

- Installing the AI, FCM, or email SDKs now. They come in Phase 8.
- Skipping config validation. A missing key in staging then becomes a silent failure.

### AI Agent Guidance

> Do not add routes, domain entities, or business rules in this phase. `/health` and `/ready` are the only routes allowed.

---

## Phase 2 – Core Domain / Data Model

### Goals

- Define every entity the safety, privacy and clinical rules depend on.
- Enforce append-only audit tables at the database level.
- Make illegal states unrepresentable where the type system can do it.

### Tasks

1. Define enums in `src/common/enums.ts`:
   - `AlertState`: `detected`, `dispatched`, `delivered`, `acknowledged`, `patient_contacted`, `resolved`, `closed` (B01). Also `escalated_external` as a flag, not a state.
   - `CrisisTier`: `tier1`, `tier2`, `tier3`, `possible_concern`.
   - `ConsentItem`: `mood_task_data`, `journal_storage`, `journal_ai_analysis`, `crisis_detection`, `tier3_therapist_alert`, `therapist_data_sharing`.
   - `RestrictionLevel`: `none`, `level1`, `level2`, `level3`.
   - `Stage`: `stage1`, `stage2`, `stage3`. Internal only. Never returned to a patient.
   - `ConnectionState`: `pending_therapist`, `awaiting_patient_confirmation`, `active`, `ended`, `flagged_wrong`.
   - `VerificationStatus`: `pending`, `verified`, `expired_grace`, `suspended`, `revoked`.
   - `JournalKind`: `recovery`, `personal`.
   - `JournalPrivacy`: `hidden_from_therapist`, `progress_only`, `full_access`.
2. Entities, with fields. Every entity has `id` (UUID), `createdAt`, `updatedAt` unless marked append-only:
   - **User:** `role` (`patient`, `therapist`, `safety_team`), `ageConfirmedAt`, `status`, `deletedAt`.
   - **Session:** `userId`, `familyId`, `refreshTokenHash`, `revokedAt`, `deviceLabel`, `lastSeenAt`.
   - **ConsentRecord** (append-only): `userId`, `item`, `granted` (boolean), `source` (`onboarding`, `settings`, `withdrawal_confirmed`), `appVersion`, `recordedAt`.
   - **Survey / SurveyResponse / SurveyResult:** item-level responses kept. Scores computed and stored. `PHQ9_ITEM9` value recorded separately.
   - **SafetyPlan:** `userId`, five fields (fields 1, 2, 3 and 5 encrypted text, field 4 encrypted and always excluded from sharing), `sharedWithTherapist` boolean, `keyId`.
   - **CheckIn:** `userId`, `clientId` (unique), `mood` (1 to 10), `feelingWords`, `bodySignal`, `taskReflection`, `clientCreatedAt`, `serverReceivedAt`.
   - **TaskLibraryItem:** `key`, `version`, `stage`, `category`, `eligibility` (JSON), `reviewerSignOffId`, `status` (`approved`, `paused`, `removed`). Only `approved` items are selectable.
   - **TaskAssignment:** `userId`, `taskKey`, `assignedFor` (date), `completedAt`, `helpRating`, `swapReason`.
   - **JournalEntry:** `userId`, `kind`, `clientId` (unique per user), `ciphertext`, `keyId`, `clientCreatedAt`, `serverReceivedAt`, `analysisStatus` (`pending`, `succeeded`, `failed`, `queued`), `historical` boolean.
   - **AiScan** (metadata only, append-only): `entryId`, `analysisAt`, `provider`, `sentimentSignal` (`positive`, `neutral`, `negative`, `crisis`), `crisisDetected`, `durationMs`, `status`. Never contains text (B07).
   - **CrisisEvent** (append-only, kept 24 months): `userId`, `tier`, `triggerType`, `ruleVersion`, `sourceRef` (entry ID or check ID), `clientCreatedAt`, `serverReceivedAt`, `historical`.
   - **CrisisAlert:** `userId`, `crisisEventId`, `state` (`AlertState`), `escalatedExternal` boolean, `reviewedAt`, `undoDeadline`, `checklist` (three booleans), `resolvedAt`, `autoClosedAt`.
   - **AlertEvent** (append-only): `alertId`, `fromState`, `toState`, `actor` (`system`, `therapist:<id>`, `timer`), `reason`, `at`.
   - **TherapistProfile:** `userId`, `licenceNumber` (encrypted), `professionalBody`, `countryOfPractice`, `verificationStatus`, `verifiedAt`, `expiresAt`, `graceEndsAt`, `suspendedAt`, `responseTimeBand`, `mfaEnabled`.
   - **Invite:** `patientId`, `therapistEmail`, `tokenHash`, `patientFirstName`, `expiresAt`, `status`.
   - **Connection:** `patientId`, `therapistId`, `state` (`ConnectionState`), `confirmedAt`, `endedAt`, `wrongConnectionFlag`.
   - **AccessLogEntry** (append-only): `patientId`, `viewerId`, `dataType`, `at`. No content.
   - **RestrictionState:** `userId`, `level`, `timerStartedAt`, `pausedAt`, `pausedDaysTotal`, `invitePending`.
   - **Resource:** `name`, `number`, `hours`, `ownerName`, `lastVerifiedAt`, `isEmergency`.
   - **DeviceToken:** `userId`, `fcmToken`, `platform`, `lastSeenAt`.
   - **NotificationPreference:** `userId`, `type`, `enabled`. Crisis types cannot be set to `false`.
   - **DeletionRequest** and **ExportRequest:** `userId`, `status`, `requestedAt`, `completedAt`, `expiresAt`, `referenceNumber`.
   - **SafetyTeamFlag** (append-only): `userId`, `reason` (`analysis_failed`, `possible_concern`, `wrong_connection`, `bulk_export_anomaly`), `createdAt`, `resolvedBy`, `resolvedAt`.
3. Domain factories for every entity return a fully populated object. No `undefined` for required fields. Optional fields are `null` or have a documented default.
4. Alert state machine as a pure function: `transition(current, event) -> next | throws InvalidTransition`. It lives in `src/modules/crisis/alert-state.ts` and has no database or HTTP imports.
5. Connection state machine as a pure function, with the same rules.
6. Prisma schema and the first migration. Append-only tables get database permissions that revoke `UPDATE` and `DELETE` from the application role. Test this with a real database.
7. Seed script creates synthetic patients, therapists and tasks only. No real personal data, ever.

### Acceptance Criteria

- [ ] Every entity above has a documented shape and a factory.
- [ ] Every transition in B01 is accepted. Every other transition throws `InvalidTransition`.
- [ ] The connection state machine rejects `active` from `pending_therapist` (a therapist cannot activate a connection without patient confirmation).
- [ ] An `UPDATE` or `DELETE` on `consent_records`, `alert_events`, `access_log`, `crisis_events`, or `safety_team_flags` fails with a permission error when run as the application role.
- [ ] `findById("nonexistent")` returns `null`, never throws.
- [ ] `updatedAt` changes on update; `createdAt` never changes.
- [ ] No journal text, safety plan field, or licence number appears in any column that is not encrypted.

### Common Pitfalls

- Storing journal text in `AiScan` or in a log. B07 forbids it.
- Defining states in the controller instead of the state machine module.
- Using one `status` column for two different state machines.

### AI Agent Guidance

> No HTTP handlers or business rules in this phase. Entities and state machines only. If you find yourself writing a controller, stop and move it to Phase 3.

---

## Phase 3 – Primary Interface (REST contract and endpoints)

### Goals

- Publish the contract the frontend builds against.
- Implement the endpoints in checkpoint order, with the crisis path early.

### Interface Type

**Option A: REST API** with the standard envelope on every response:

```json
// Success
{ "success": true, "data": { }, "timestamp": "2026-10-23T00:00:00Z", "error": null }
// Error
{ "success": false, "data": null, "timestamp": "2026-10-23T00:00:00Z", "error": { "code": "VALIDATION_FAILED", "message": "human readable" } }
```

- All timestamps are UTC ISO-8601.
- Every request that creates something from the device carries a `clientId` (UUID). Retrying with the same `clientId` returns the original result with `200`, not `409`, and sets `"duplicate": true` in `data`.

**Error code registry** (`src/common/errors.ts`, mirrored in `openapi.yaml`):

| Code | HTTP | Meaning |
|---|---|---|
| `VALIDATION_FAILED` | 400 | Input did not match the contract |
| `UNAUTHENTICATED` | 401 | Missing or expired access token |
| `REAUTH_REQUIRED` | 401 | Therapist session older than 4 hours, must re-authenticate before opening an alert |
| `FORBIDDEN` | 403 | Role or connection does not allow this action |
| `CONSENT_REQUIRED` | 403 | A required consent item is not granted |
| `NOT_FOUND` | 404 | Resource does not exist or is not visible to this caller |
| `CONFLICT` | 409 | Business rule conflict (for example, a second active therapist) |
| `ALERT_STATE_INVALID` | 409 | Transition not allowed from the current alert state |
| `UNDO_WINDOW_CLOSED` | 409 | The 60-second undo has passed |
| `RATE_LIMITED` | 429 | Not applied to crisis endpoints |
| `DEPENDENCY_UNAVAILABLE` | 503 | A required dependency is down. Crisis endpoints never return this for Tier 3 |
| `INTERNAL_ERROR` | 500 | Unexpected. Never includes a stack trace |

### Tasks

**Task 0 (CP0): Contract.** Write `services/api/openapi.yaml` v0.1 with:
- The envelope and error registry above.
- Enum schemas for every value in Phase 2.
- Request and response shapes for every endpoint in the groups below.
- Security schemes: bearer JWT, and the re-auth header or step-up flow.
- Examples for every endpoint.

Run Spectral lint. Both people review and approve. Tag as `contract-v0.1`.

**Endpoint groups (proposed, finalised in CP0)**

| Group | Example endpoints | CP |
|---|---|---|
| Auth | `POST /v1/auth/signup`, `POST /v1/auth/login`, `POST /v1/auth/refresh`, `POST /v1/auth/logout`, `GET /v1/auth/sessions`, `DELETE /v1/auth/sessions/{id}`, `GET /v1/me` | CP1 |
| Consent | `GET /v1/consents`, `PUT /v1/consents/{item}`, `POST /v1/consents/crisis-monitoring/withdrawals` (step 1), `POST /v1/consents/crisis-monitoring/withdrawals/{id}/confirm` (step 2), `GET /v1/consents/history` | CP1 |
| Surveys | `GET /v1/surveys/{id}`, `POST /v1/surveys/{id}/responses`, `POST /v1/surveys/{id}/complete`, `GET /v1/surveys/results`, `POST /v1/surveys/retake` (rejected inside 14 days) | CP1 |
| Safety plan | `GET /v1/safety-plan`, `PUT /v1/safety-plan/fields/{n}`, `PUT /v1/safety-plan/sharing` | CP1 |
| Devices | `POST /v1/devices`, `DELETE /v1/devices/{id}`, `GET /v1/notification-preferences`, `PUT /v1/notification-preferences/{type}` | CP1 |
| Crisis | `POST /v1/crisis/checks` (sub-2s), `POST /v1/crisis/self-initiated`, `POST /v1/crisis/alerts/{id}/patient-consent`, `GET /v1/crisis/resources` | CP2 |
| Sync | `POST /v1/sync/items` (batch; each item returns `accepted`, `duplicate`, `historical_flagged`, or `rejected`) | CP2 |
| Therapist onboarding | `POST /v1/therapist/onboarding`, `POST /v1/therapist/acknowledgements` (DSA, crisis responsibilities, emergency statement) | CP3 |
| Invites and connections | `POST /v1/patient/invites`, `POST /v1/therapist/invites/accept`, `GET /v1/patient/connections/pending`, `POST /v1/patient/connections/{id}/confirm`, `POST /v1/patient/connections/{id}/decline`, `POST /v1/patient/connections/{id}/flag-wrong`, `POST /v1/patient/connections/by-code`, `DELETE /v1/patient/connection` | CP3 |
| Therapist alerts | `GET /v1/therapist/alerts`, `GET /v1/therapist/alerts/{id}`, `POST /v1/therapist/alerts/{id}/review`, `POST /v1/therapist/alerts/{id}/review/undo`, `POST /v1/therapist/alerts/{id}/resolve` | CP3 |
| Therapist patients | `GET /v1/therapist/patients` (grouped), `GET /v1/therapist/patients/{id}`, `GET /v1/therapist/patients/{id}/summary`, `POST /v1/therapist/patients/{id}/stage-approvals` | CP3 |
| Tasks and check-ins | `GET /v1/today`, `POST /v1/tasks/{id}/complete`, `POST /v1/today/swap` (one per day), `POST /v1/tasks/{id}/feedback`, `GET /v1/tasks/{id}/why`, `POST /v1/check-ins`, `GET /v1/check-ins?days=30` | CP4 |
| Journals | `POST /v1/journal/{kind}/entries`, `GET /v1/journal/{kind}/entries`, `PUT /v1/journal/privacy` | CP4 |
| Restriction and status | `GET /v1/status` (returns restriction level and copy key, never stage) | CP4 |
| Privacy | `GET /v1/privacy/access-log`, `POST /v1/privacy/exports`, `GET /v1/privacy/exports/{id}`, `POST /v1/privacy/pause`, `POST /v1/account/deletion-requests`, `POST /v1/account/deletion-requests/{id}/confirm` | CP5 |

1. Implement the envelope middleware and the global exception filter.
2. Implement each group in checkpoint order. Each group is a module with a controller (translation only), a service (calls the domain), and DTOs (validation).
3. Idempotency on every device-originated `POST`, using `clientId`.
4. Correct status codes and error codes for every outcome. Never return `200` with an empty result where `404` applies.
5. Validate every input at the boundary. Reject malformed input with `400` before it reaches the domain.

### Acceptance Criteria

- [ ] `openapi.yaml` passes Spectral lint with zero errors.
- [ ] Every response from the running service validates against `openapi.yaml` (contract tests).
- [ ] Every endpoint uses the envelope. No raw objects.
- [ ] Invalid input returns `400 VALIDATION_FAILED` with a useful message. Never `500`.
- [ ] Missing resources return `404 NOT_FOUND`. A therapist requesting a patient without an active connection gets `404`, not `403`, so the existence of the patient is not revealed.
- [ ] Retrying a device `POST` with the same `clientId` returns the original result with `duplicate: true`.
- [ ] No business decision in any controller. A grep for conditionals in controllers that reference clinical fields finds none.

### Common Pitfalls

- Returning `403` for a patient the therapist has no connection to, which leaks that the patient exists.
- Different error shapes from different groups.
- Adding an endpoint to the code before it is in the contract.

### AI Agent Guidance

> The interface layer is a translation layer. A conditional that makes a clinical or safety decision belongs in `crisis/`, `restriction/`, or `connections/`, not in a controller.

---

## Phase 4 – Computed Data (priority groups, summaries, mood series)

### Goals

- Give the therapist a safe, honest view of each patient.
- Keep every computed value reproducible from raw data.

### Tasks

1. **Priority grouping** (`src/modules/patients/grouping.ts`, pure function, table-tested):

| Group | Rule (PROPOSED thresholds; clinical confirmation pending) |
|---|---|
| Needs Attention (red) | An open crisis alert, or a Tier 2 or Tier 3 event in the last 72 hours, or a `possible_concern` flag not yet reviewed |
| Check In When You Can (yellow) | Three consecutive low-mood days, or three skipped tasks in the last seven days |
| Progressing Well (green) | Neither of the above, and a check-in in the last 3 days |
| No Recent Activity (separate) | No check-in for 3 days (OD-7). Never labelled low priority |

2. **Weekly AI summary** (`patients/summaries.ts`): generated weekly for each active connection. The previous version is deleted (spec 14.4). Includes the clinical-judgment disclaimer as a required field, not optional text.
3. **Mood series:** 30-day mood points, plus daily task completion rate.
4. **Patient weekly snapshot:** 7-day mood and task completion. No gamification. No counts framed as streaks (spec 19).
5. **Journal sentiment summary** for the therapist: visible only when the patient's privacy setting allows it (spec 6.6). The AI never receives raw text for this, only the metadata defined in Phase 2.

### Acceptance Criteria

- [ ] Every grouping rule has a table-driven test covering the boundary values.
- [ ] A summary without the disclaimer field fails validation.
- [ ] Regenerating a summary deletes the previous version. A test verifies only one exists.
- [ ] Aggregates match raw data in a property test (for example, completion rate equals completed divided by assigned).
- [ ] The patient snapshot response contains no stage field.

### Common Pitfalls

- Computing groups in the controller or in SQL in a way the tests cannot reach.
- Caching summaries without an invalidation rule.

---

## Phase 5 – Business Logic Layer

### Goals

- Implement every rule in the spec that decides what the system does.
- Keep the rules independent of HTTP, the database, and the AI.

### Business Rules

Each rule is a named function with its own test file. The ID is referenced in the test name.

| ID | Rule | Source |
|---|---|---|
| R-STAGE-1 | Never advance a stage on time alone. Mood stable or improving over 7 days, task completion above 60% over 7 days, and no crisis language that week | Spec 5.3 rule 1 |
| R-STAGE-2 | Stage advancement requires therapist approval when a therapist is connected. The AI recommendation is held 48 hours | Spec 5.3 rule 5 |
| R-STAGE-3 | Stage 2 tasks unlock only with an active therapist connection | Spec 4.3, Issue 11 |
| R-SIMPLIFY-1 | Three consecutive low-mood days or three skipped tasks quietly move the patient to simpler tasks and resurface the invite. No announcement | Spec 5.3 rule 2 |
| R-INACT-1 | Inactivity (3 days) notifies the therapist. It never steps the stage back | Spec 5.3 rule 6, Issue 13 |
| R-SWAP-1 | One swap per day maximum | Spec 6.4 |
| R-FRIDAY-1 | Friday offers a light task first, then the optional reflection. Both skippable | Spec 6.4, Issue 37 |
| R-CAT-1 | A new category needs consent. One new category at a time. "Not yet" defers one week | Spec 5.3 rule 7, Issue 38 |
| R-PLACE-1 | Initial placement is provisional. Reassess after 7 days. Partial or unclear results default to lower severity | Spec 6.2, Issue 15 |
| R-RESTRICT-1 | Restriction levels by day: Level 1 days 1 to 14, Level 2 days 15 to 30, Level 3 day 31 onward. The timer pauses while an invite is pending, capped at `PAUSE_CAP_DAYS` | Spec 10.2, 10.3, Issue 02 |
| R-RESTRICT-2 | Locked, never erased. Existing content stays readable. Only new entries are blocked | Spec 10.3, Issue 03 |
| R-RESTRICT-3 | Crisis resources and grounding are never restricted | Spec 10.3 |
| R-CONSENT-1 | Monitoring is ON or OFF. OFF automatically grants the therapist read access to the Recovery Journal, notifies the therapist of the state change without content, and blocks Tier 3 from journal entries | Spec 14.3, B05 |
| R-CONSENT-2 | Monitoring cannot be OFF while the journal is hidden from the therapist | Spec 14.3 |
| R-CONSENT-3 | Withdrawing crisis monitoring requires a second confirmation step | Spec 14.3 |
| R-CONN-1 | Only the patient can end a connection. Access ends immediately. The therapist receives a notice with no reason | Spec 8.3, N02 |
| R-CONN-2 | One active therapist at a time | Spec 8.3 |
| R-CONN-3 | No data is visible to a therapist until the patient confirms the connection | Spec 8.1, B06 |
| R-LICENCE-1 | Re-verify every 6 months. Reminder 30 days before expiry. 14-day grace. Revocation suspends immediately | Spec 8.2, N01 |
| R-TIER-1 | Tier classification follows the table in spec 11.2. Ambiguous signals become `possible_concern` before any Tier 2 or Tier 3 | Spec 5.6, 11.2 |
| R-TIER-2 | Tier 2 never auto-contacts a trusted contact. Tier 3 contacts a trusted contact only as a last resort, with a neutral message | Spec 11.4, N05 |
| R-ESC-1 | Escalation: 0 min (crisis screen to patient, therapist push, SMS if enabled, in-app urgent). 30 min (second urgent push). 2 hours (third urgent notification, red banner). 6 hours (organisation SMS, therapist account flagged, patient told escalation moved) | Spec 11.3, Issue 06 |
| R-ESC-2 | Every alert shows elapsed time to the therapist | Spec 11.3 |
| R-ESC-3 | Without a therapist, the alert auto-closes 24 hours after external escalation, with a note | Spec 11.5, B01 |
| R-ALERT-1 | Resolve requires all three checklist items. "Mark reviewed" starts a 60-second undo window | Spec 11.5, B01 |
| R-SYNC-1 | Freshness uses the creation timestamp. Dedupe by `clientId`. Historical entries create a flag, not a timer. See OD-9 | Spec 11.6, B04, N06 |
| R-NOTIF-1 | Patient notifications: max one per type per day, max two per 24 hours, quiet hours 22:00 to 08:00 device-local, suppressed when the day's check-in and task are complete | Spec 6.7 |
| R-NOTIF-2 | "Not today" pauses non-crisis notifications for 24 hours. Never suppresses crisis types | Spec 6.7 |
| R-NOTIF-3 | During a Tier 2 or Tier 3 event, non-crisis notifications are suppressed until the event is resolved | Spec 6.7 |
| R-NOTIF-4 | Crisis resource nudges and connection status cannot be disabled by the patient | Spec 6.7 |
| R-NOTIF-5 | Push payloads carry no mental health content. Titles and bodies are chosen from a fixed, neutral set | Spec 13 |
| R-DELETE-1 | Two-step deletion. Immediate removal of content. Backups within 30 days. Crisis logs kept 24 months. Consent records kept indefinitely | Spec 14.6, N10 |
| R-AUDIT-1 | Access log records timestamp and data type only, forward-only, append-only | Spec 14.7, N08 |
| R-PRIVACY-1 | Pause data processing puts the account in read-only mode. Crisis monitoring remains as the consent state allows | Spec 14.5 |

### Tasks

1. Implement each rule as a named function in its module. No rule lives in a controller or a repository.
2. Implement state machines for alerts (`crisis/alert-state.ts`), connections (`therapist/connections/state.ts`), consent (`consent/state.ts`), and restriction (`restriction/state.ts`). Reject invalid transitions with a typed error.
3. Implement the scheduled jobs in `src/jobs/`, each idempotent:

| Job | Schedule | Purpose |
|---|---|---|
| `escalation-step` | Delayed, per alert | Runs 30 min, 2 h, 6 h steps. Checks state before acting |
| `escalation-reconcile` | On boot, then every 5 min | Re-schedules missing escalation jobs |
| `restriction-tick` | Daily, 00:05 UTC | Advances restriction levels, respects pause |
| `inactivity-check` | Daily | Creates therapist notifications for R-INACT-1 |
| `licence-check` | Daily | Reminders at 30 days, suspensions at expiry plus 14 days |
| `summary-generate` | Weekly | Regenerates AI summaries |
| `ai-queue-retry` | Every minute | Retries queued journal scans (B02) |
| `retention-purge` | Monthly | Applies the retention table in spec 14.4 |
| `backup-deletion-sweep` | Daily | Removes deleted users' data from backups within 30 days |

4. The escalation job must never send a notification for an alert whose state is already `acknowledged` or later, and must never send a second copy of the same step.

### Acceptance Criteria

- [ ] Every rule in the table above has at least one unit test whose name includes its ID.
- [ ] Every invalid transition is rejected with `InvalidTransition`, and the rejection is tested.
- [ ] Escalation tests use a fake clock. They prove the 30 min, 2 h and 6 h steps fire once each.
- [ ] Killing and restarting the process mid-escalation resumes the next step, and does not repeat a completed one (integration test).
- [ ] A rule module imports no HTTP, Prisma client, or AI SDK types.
- [ ] Scheduled jobs do not overlap. A slow run blocks the next run of the same job.

### Common Pitfalls

- Writing escalation as a single `setTimeout` in memory. A restart loses it.
- Letting the AI module set an alert state.
- Treating a `possible_concern` as a Tier 2 alert.

---

## Phase 6 – Real-Time Layer *(optional in MVP)*

### Goals

- Let the therapist app receive alert updates while it is open.
- Never make push or live updates the only way a crisis reaches a therapist.

### Decision

**MVP default:** FCM push plus fetch-on-open. No WebSocket. The therapist alert list refreshes when the app opens or the user pulls to refresh. This meets the escalation timeline because the delivery guarantee is FCM and SMS, not the socket.

**Add the WebSocket gateway** only if CP3 shows the therapist needs live updates while the app is open. Record that as an ADR before building it.

### Tasks (if built)

1. Event types and payloads (no content in any payload):
   ```
   alert.updated:
     type: "alert.updated"
     alertId: uuid
     state: AlertState
     elapsedSeconds: integer
     timestamp: ISO-8601
   ```
2. Authenticate on connect with a short-lived ticket, not the refresh token.
3. Broadcast only to connections the user is authorised to see.
4. Guard against stale sockets. Log failed sends at `warn`.
5. Never send patient names or clinical fields over the socket.

### Acceptance Criteria (if built)

- [ ] A connected therapist receives `alert.updated` within one second of a state change.
- [ ] Disconnecting does not leak memory (a soak test over 1,000 connect and disconnect cycles).
- [ ] A therapist without a connection to a patient receives no events about that patient.

---

## Phase 7 – Persistence / External Storage

### Goals

- Durable storage that survives restarts.
- Degrade with `503`, not a crash, when a dependency is down.

### Tasks

1. PostgreSQL via Prisma. Migrations are versioned and never edited after being applied.
2. Repository layer: all Prisma calls live in `*.repository.ts` files. Services never import Prisma directly.
3. Redis holds BullMQ queues and escalation timers only. Nothing else. Losing Redis must not lose an alert (ADR-3).
4. Connection pooling with explicit limits. Retry on transient errors with backoff.
5. Graceful degradation: if PostgreSQL is unreachable, the crisis check still returns a Tier 3 decision from the rule-based detector and queues the event for persistence. It never returns an empty success.
6. Backup and restore documented in `docs/database.md`. Point-in-time recovery is required before real data.
7. Field encryption (ADR-6) applied in the repository layer, so services receive plaintext only inside the domain.

### Acceptance Criteria

- [ ] Data persists across a service restart (integration test).
- [ ] A migration runs cleanly on an empty database and on a database at the previous version.
- [ ] All Prisma calls are in repository files (a lint rule enforces this).
- [ ] With PostgreSQL stopped, the crisis check returns a Tier 3 decision and a queued persistence item, not a `500`.
- [ ] A restore from backup is performed and documented once before CP5.

### Common Pitfalls

- Editing an applied migration.
- Writing a query in a service.
- Assuming Redis is durable.

---

## Phase 8 – External Integrations

### Goals

- Connect to providers through isolated adapters that can be replaced.
- No provider failure stops the crisis path.

### Integrations

| Integration | Used for | Data sent | Failure behaviour |
|---|---|---|---|
| Groq (primary AI) | Crisis Tier 1 and 2 signals, task selection, journal sentiment, weekly summary, message drafts (later) | Journal signals and metadata. Prefer signals over full text (N11) | Timeout at `AI_CRISIS_TIMEOUT_MS`. Fall through to Cerebras, then OpenRouter. If all fail, journal saves and the scan is queued (B02) |
| Cerebras (fallback 1) | As above | As above | As above |
| OpenRouter / Mistral (fallback 2) | As above | As above | As above |
| FCM | Push to patients and therapists | Neutral title and body only (R-NOTIF-5) | Retry with backoff. Invalid tokens removed. Failure logged, alert state unchanged |
| SendGrid | Therapist invite email (patient first name only). Therapist alert email | Name and link only. No clinical content | Retry. Failure logged. SMS and push are the other channels |
| SMS provider | Therapist alerts. Organisation escalation (OD-13) | Organisation: neutral line and callback number. Therapist: "A patient needs attention" plus app link | Retry. Failure creates a `safety_team` flag. Dialer link is the fallback on the client |
| Sentry (optional) | Error reports | Scrubbed. No request bodies, no journal, no names | Non-blocking |

### Tasks

1. One adapter per provider in `src/modules/ai/` and `src/modules/notifications/`. No provider SDK imported anywhere else.
2. Each adapter validates its own config at startup and fails fast when a required credential is missing in staging or production.
3. Retries with exponential backoff and a configured maximum. Respect `429` with `Retry-After`.
4. The AI adapter enforces the AI logging rule: only the Phase 2 `AiScan` metadata is written.
5. Document rate limits and quotas per provider in `docs/integrations.md`.
6. A mock adapter for every integration, used by tests. Tests never call a paid service (Phase 11).

### Acceptance Criteria

- [ ] Each integration is in its own module. A grep for provider SDK imports outside those modules finds none.
- [ ] With every AI provider stubbed to time out, a Tier 3 check still returns a decision within 2 seconds.
- [ ] A missing credential in production stops the process at startup.
- [ ] A `429` from a provider is honoured.
- [ ] Organisation SMS content matches OD-13 exactly (snapshot test).

### Common Pitfalls

- Calling the AI from a controller or from the Flutter client.
- Putting a patient's name in an SMS to an organisation.
- Treating a DPA as signed because the adapter exists. The adapter does not stop real data flowing.

---

## Phase 9 – Validation, Error Handling & Observability

### Goals

- No bad input or dependency failure exposes internals or crashes the process.
- Operators can see the safety pipeline working, without seeing any patient content.

### Tasks

1. **Validation:** every boundary validates (API DTOs, queue payloads, provider responses).
2. **Global exception filter:** returns the error envelope, logs the full error with request ID and user ID (never content), and never returns a stack trace.
3. **Request logging:** method, route template (not the filled path), status, duration, request ID. Never bodies.
4. **Structured logs** with redaction (Phase 1). Log levels from config.
5. **Safety pipeline metrics:**
   - Time from `detected` to `dispatched` (p95).
   - Escalation steps fired, by step.
   - Alerts open longer than 6 hours.
   - AI provider failures by provider.
   - Queued journal scans and their age.
6. **Safety-team view:** an internal list of `safety_team_flags`. Read-only in MVP. Behind the `safety_team` role.
7. **Health:** `/health` (liveness) and `/ready` (dependencies), as in Phase 1.

### Acceptance Criteria

- [ ] No input at any boundary causes an unhandled exception or leaks a stack trace (fuzz test on the API).
- [ ] Every `4xx` and `5xx` is logged with request ID and error code.
- [ ] The metrics above are emitted and visible in the chosen dashboard.
- [ ] An alert open for more than 6 hours appears on the safety-team view.

### Common Pitfalls

- Logging a request body "for debugging" in a branch and forgetting to remove it.
- Swallowing errors in a `catch` that does nothing.

---

## Phase 10 – Security

### Goals

- Protect clinical data against the threats in the spec: stolen phones, controlling relatives, stolen therapist passwords, and bulk export.

### Tasks

1. **Authentication:** JWT per ADR-7. Refresh rotation with reuse detection. Login alerts on new device or new location. Session list and revocation.
2. **Therapist MFA:** optional and strongly encouraged. A dismissible prompt returns periodically until enabled (B08). MFA is required before a therapist can export data.
3. **Re-authentication:** a therapist session older than 4 hours must re-authenticate before opening a crisis alert (B08). Returns `REAUTH_REQUIRED`.
4. **Authorisation:** enforced in the service layer. Every query that reads patient data filters by an active connection or the patient's own ID. Tests cover cross-patient access attempts.
5. **Input sanitisation:** parameterised queries only. No string-built SQL.
6. **Encryption:** AES-256 at rest for journals, safety plan, and licence numbers (ADR-6). TLS 1.3 in transit.
7. **Secrets:** none in the repo or in history. Secret scanning on every PR.
8. **Rate limiting:** on login, signup, invite, password reset, export, and every other public endpoint. Not on crisis endpoints (Global Rule 8).
9. **Security headers:** Helmet defaults. CORS empty by default.
10. **Bulk export and access anomalies:** detect bulk exports and new-IP access to patient data. Create a `safety_team` flag (spec 14.10).
11. **Threat model:** update `docs/architecture.md` with each component's threat surface and mitigation. Cover: stolen phone, controlling relative, stolen therapist password, leaked backup, malicious provider response.

### Acceptance Criteria

- [ ] No hardcoded secrets (secret scan passes on history).
- [ ] Every protected route rejects a missing or expired token with `401`.
- [ ] A therapist cannot read a patient without an active connection (tested for every patient-data endpoint).
- [ ] A reused refresh token revokes the whole session family.
- [ ] A therapist session older than 4 hours gets `REAUTH_REQUIRED` on alert open.
- [ ] `npm audit --omit=dev` reports zero high or critical findings.
- [ ] Rate limits are active on every public endpoint except the crisis endpoints.

### Common Pitfalls

- Enforcing authorisation only through the route guard and not in the service.
- Returning `403` where `404` avoids leaking existence.
- Forgetting an internal endpoint that is "not public".

---

## Phase 11 – Testing

### Goals

- Prove each safety rule, then prove the whole crisis flow end to end against real databases.

### Tasks

1. **Unit tests:** rules, state machines, grouping, freshness, dedupe, restriction, consent. Happy path, every error path, boundary values.
2. **Integration tests:** Testcontainers for PostgreSQL and Redis. Controller to service to repository, real wiring. Escalation tested with a fake clock.
3. **Contract tests:** every response validated against `openapi.yaml`.
4. **Safety scenario suite (`test/safety/`):** the Gate 1 scenarios below. These are shared with the frontend. Both people own them. A safety item is closed only when its scenario passes end to end.
5. **No paid calls:** AI, FCM, SMS and email use mocks in tests. A test that reaches a real provider fails.
6. **Coverage:** threshold enforced in CI. PROPOSED 90% on `crisis/`, `consent/`, `therapist/connections/`, `restriction/` and `sync/`.

### Shared Safety Scenarios (Gate 1, required before real data)

| ID | Scenario | Expected result | Gate item |
|---|---|---|---|
| S1 | Explicit Tier 3 language, no therapist response | Alert created, therapist notified on all channels at minute 0, patient shown the crisis screen | B01, B09 |
| S2 | Tier 2 consent prompt answered Yes | Immediate alert with patient consent recorded | B05, Spec 11.2 |
| S3 | Tier 2 consent prompt answered No | No detail sent. Soft flag only. Resources shown | Spec 11.2 |
| S4 | Alert unreviewed at 30 min, 2 h, 6 h | Second push at 30 min. Third urgent at 2 h. Organisation SMS and patient told at 6 h. Each step fires once | B01, Issue 06 |
| S5 | Therapist marks reviewed, then undoes within 60 s | Undo succeeds. Escalation continues | B01 |
| S6 | Undo attempted after 60 s | `UNDO_WINDOW_CLOSED`. Review stands | B01 |
| S7 | Resolve with two of three checklist items | Rejected | B01 |
| S8 | AI endpoint down during journal save | Entry saved. Scan queued. No patient-facing degraded message. Safety-team flag created | B02 |
| S9 | Same entry ID submitted twice | Second request returns `duplicate: true`. No second alert | B02, N06 |
| S10 | Offline entry created at T, synced at T plus 1 h | Full crisis flow runs | B04, N06 |
| S11 | Offline entry created at T, synced at T plus 3 h | Historical flag. No escalation timer. Explicit Tier 3 language still notifies once (OD-9) | B04, N06 |
| S12 | Server restarted during the 30 min wait | Escalation resumes. No step repeated or skipped | B01, ADR-3 |
| S13 | Monitoring turned OFF | Therapist gains read access automatically. Therapist told state changed, no content. Tier 3 does not fire from journal entries | B05 |
| S14 | Withdrawal of crisis monitoring without second confirmation | Rejected | B05 |
| S15 | Consent record after withdrawal | Appended, not deleted | Spec 14.2 |
| S16 | Therapist session older than 4 hours opens an alert | `REAUTH_REQUIRED`. Alert not shown until re-auth | B08 |
| S17 | Therapist licence revoked | Immediate suspension. Patient told "temporarily paused" | N01 |
| S18 | Invite accepted by therapist | No patient data visible until patient confirms | B06, N03 |
| S19 | Invite declined by patient | Nothing ever visible. Connection ends | B06 |
| S20 | Invite older than 48 h | Expired. Cannot be accepted | N03 |
| S21 | Patient ends connection | Therapist loses access immediately. Thread stays with patient | N02 |
| S22 | Crisis resources requested with an expired access token | Returned from the bundled set. No login needed | Spec 12.2 |
| S23 | Tier 3 check while AI and PostgreSQL are both stubbed down | Rule-based decision returned within 2 s. Event queued | ADR-4, Phase 7 |

### Acceptance Criteria

- [ ] `npm test` runs and all tests pass on a clean install.
- [ ] Every rule in Phase 5 has at least one unit test.
- [ ] Scenarios S1 to S23 exist and pass. A scenario that is not written counts as failing.
- [ ] No test calls a real paid provider.
- [ ] Test fixtures cover normal, empty, error, and each edge case. No production data.

### Common Pitfalls

- Mocks that copy the bug. Test real wiring where safety depends on it.
- Only happy-path tests.
- A long, flaky end-to-end suite instead of targeted scenarios.

### AI Agent Guidance

> Test public interfaces, not private functions. If a test must reach into a private field to pass, the design is wrong.

---

## Phase 12 – Performance Optimization

### Goals

- Meet the spec's latency targets on the crisis path.
- Optimise only what is measured.

### Rules

- Capture a baseline before changing anything. If the metric does not improve after a change, revert.

### Tasks

1. Load test the crisis endpoint at expected peak plus 3x. Record p50, p95, p99.
2. Targets:
   - Crisis check p95 under 2 seconds (spec 5.6).
   - Tier 3 decision under 200 ms (it is rule-based; the AI is not on this path).
   - Escalation step timing within 10 seconds of schedule.
3. Likely bottlenecks to check, not assume: missing index on `crisis_alerts(state)` and `patient_id`; N+1 queries in the therapist patient list; AI call timeouts.
4. Document before and after numbers for each change.

### Acceptance Criteria

- [ ] Every optimisation has a before and after measurement in `docs/performance.md`.
- [ ] No optimisation breaks a test.
- [ ] Targets above are met at the load test.

---

## Phase 13 – CI/CD & Code Quality

### Goals

- Every change is linted, tested, scanned and contract-checked before it reaches `main`.

### Tasks

1. GitHub Actions workflow `.github/workflows/api.yml`, path-filtered to `services/api/**` and `openapi.yaml`:
   - On pull request:
     - [ ] `npm ci`
     - [ ] Lint and format check
     - [ ] Type check
     - [ ] Spectral lint on `openapi.yaml`
     - [ ] Unit and integration tests (with Testcontainers)
     - [ ] Safety scenario suite (S1 to S23)
     - [ ] Contract tests
     - [ ] Coverage threshold
     - [ ] `npm audit --omit=dev` (fails on high or critical)
     - [ ] Secret scan
   - On merge to `main`:
     - [ ] All of the above
     - [ ] Build container image
     - [ ] Deploy to staging (once OD-8 is decided)
2. Branch protection on `main`: no direct pushes, CI must pass, one approval required, and two approvals required for paths in Global Rule 7.
3. `CODEOWNERS`:
   ```
   services/api/src/modules/crisis/        @person-a @person-b
   services/api/src/modules/consent/       @person-a @person-b
   services/api/src/modules/therapist/     @person-a @person-b
   services/api/src/modules/access-log/    @person-a @person-b
   services/api/src/jobs/                  @person-a @person-b
   services/api/openapi.yaml               @person-a @person-b
   ```
4. Pre-commit hook runs the formatter and secret scan.

### Acceptance Criteria

- [ ] CI runs on every pull request touching `services/api/` and fails on lint, type, test, contract, or audit failures.
- [ ] `main` cannot be pushed to directly.
- [ ] A fresh clone runs `npm ci && npm test` and all tests pass.

---

## Phase 14 – Documentation

### Goals

- A new developer can run the service from the README alone.
- No document describes a planned feature as built.

### Tasks

1. `services/api/README.md`: prerequisites, setup, environment, how to run, how to test, the safety scenario suite, and quick-start calls.
2. `services/api/docs/architecture.md`: current diagram and threat model.
3. `services/api/docs/adr/`: one file per ADR (`ADR-001-...md`).
4. `services/api/docs/integrations.md`: every provider, its DPA status, rate limits, and failure behaviour.
5. `services/api/docs/database.md`: schema, migrations, backup and restore.
6. `services/api/docs/runbooks/`:
   - `escalation-stalled.md`: what to do when an alert's timer job is missing.
   - `ai-provider-down.md`: queue behaviour and what the safety team does with flagged scans.
   - `organisation-sms-failed.md`: fallback steps, including the dialer route.
7. `services/api/CHANGELOG.md` in Keep a Changelog format.
8. `docs/integrations.md` and the endpoint reference are generated from `openapi.yaml` where possible.
9. Mark every planned feature `[PLANNED]`.

### Acceptance Criteria

- [ ] A developer with no context runs the service from the README alone.
- [ ] Every endpoint has a working example.
- [ ] Every runbook has been walked through once by the person who did not write it.

---

## Phase 15 – Deployment & Release

### Blocked on OD-8 (hosting).

### Goals

- Ship a production-ready service with a rollback path.

### Tasks

1. All environment variables set in the hosting platform, never in code.
2. `/ready` returns `200` on staging after deploy.
3. Run the full safety scenario suite against the staging deployment before promoting.
4. Database migrations run as a separate step, before the new version starts. Migrations are forward-only. Rollback is to redeploy the previous image, never a destructive down-migration.
5. Tag releases `api-v[MAJOR].[MINOR].[PATCH]`.
6. Confirm DPAs for every provider are signed and in force before production.
7. Notify Person B of any contract change in the release.

### Release Checklist

- [ ] All tests pass on the release commit.
- [ ] No high or critical audit findings.
- [ ] Environment variables set and verified.
- [ ] `/ready` returns `200` on the deployed instance.
- [ ] Safety scenario suite passes against staging.
- [ ] DPAs signed for every provider in use.
- [ ] Backup and restore tested within the last 30 days.
- [ ] Rollback to the previous image tested.
- [ ] CHANGELOG updated. Tag pushed.
- [ ] No `[PLANNED]` feature is presented as shipped.

### Common Pitfalls

- Deploying from a laptop.
- A destructive migration with no way back.
- Discovering a missing variable after the first production deploy.

---

## Phase 16 – Refactoring & Cleanup

### Goals

- Remove debt from fast phases. Keep the architecture matching this plan.

### Tasks

1. Resolve every `TODO`, `FIXME`, `HACK` or `temporary` comment, or convert it to a tracked issue.
2. Check the module boundaries against this plan. Move any clinical rule that ended up in a controller or repository into its module.
3. Remove dead code and unused dependencies.
4. Re-run the full suite after every step.
5. Verify every checkpoint's acceptance criteria still hold.

### Acceptance Criteria

- [ ] No unresolved `TODO` or `FIXME` in `src/`, or each is tracked.
- [ ] All tests pass.
- [ ] No unused dependency in `package.json`.
- [ ] Code structure matches the Folder Structure section.

---

## Future Work

| Item | Priority | Notes |
|---|---|---|
| Therapist messaging thread | High | Spec 6.8. Post-MVP |
| Verified-organisation unlock path in place of a therapist | High | Issue 04. Expansion, not in first build |
| Full therapist clinical dashboard | Medium | Issue 09, spec 9. Gated by the evidence gate (spec 18) |
| Severe-severity users | Medium | Issue 22. Added in v2 |
| Encrypted cloud backup (opt-in) | Medium | Spec 14.8, N12. Off by default |
| Stage approval UI for therapists | Medium | Spec 9.3. Backend endpoint exists at CP3; UI is post-MVP |
| Bangla survey translation, validated | High | Issue 25. Needs a therapist |
| iOS push and desktop support | Medium | Spec 2, B10. Backend unchanged, new clients only |
| Post-quantum key exchange for EU | Low | Spec 15 |
| Multi-region residency | Low | Spec 14.9 |

---

## Out of Scope (This Version)

The following are **not** part of this implementation.

- Peer support or any in-app community (permanently excluded, spec 21)
- Therapist marketplace features: filtering, matching, or contact facilitation (permanent)
- Advertising, analytics or tracking of any kind (permanent)
- OpenAI as an AI provider (permanent)
- AI diagnosis, medication advice, or clinical progress assessment (spec 5.4)
- AI touching the safety plan in any form (spec 5.4, 21)
- Silent or automatic backups (permanent, spec 21)
- Therapist open signup (spec 2)
- Web therapist dashboard (replaced by the native therapist role, team decision 2026-10-22)
- Google Play distribution (APK on GitHub for MVP)
- Under-18 accounts (spec 2)
- Messaging with therapists (post-MVP)

---

*This plan is intentionally granular so a coding agent can work through each checkpoint without ambiguity. Complete each phase fully, verify its acceptance criteria, and do not proceed until they pass. Safety and clinical rules are not decided by code. When a rule is unclear, stop and raise the Open Decision.*

*Last updated: 2026-10-23 by Person A (backend)*
