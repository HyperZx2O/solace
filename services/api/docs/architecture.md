# Solace API: Architecture

Status: CP1 implemented and tested. Modules for CP2–CP5 are present in the tree as scaffolding/partial implementations; endpoints exist but are not yet signed off by the CP2–CP5 test suites.

## Shape

One NestJS deployable (ADR-1), PostgreSQL for state, Redis for queues and timers only.

```
                        Android app (Flutter, MVP)
                                   |
                          HTTPS, bearer JWT
                                   |
                        +----------v-----------+
                        |      Solace API     |
                        |  NestJS modular      |
                        |  monolith            |
                        |                      |
  /health /ready ------>| HealthModule         |
  /v1/auth/* ---------->| AuthModule           | CP1 implemented
  /v1/consents/* ------>| ConsentModule        | CP1 implemented
  /v1/crisis/* -------->| CrisisModule         | CP2 scaffolded (tests pending)
  /v1/sync/items ------>| SyncModule           | CP2 scaffolded (tests pending)
  /v1/therapist/* ----->| Therapist/Patients   | CP3 scaffolded (tests pending)
  /v1/tasks,/today ---->| Tasks/CheckIns       | CP4 scaffolded (tests pending)
  /v1/journal/* ------->| JournalModule        | CP4 scaffolded (tests pending)
  /v1/privacy/* ------->| PrivacyModule        | CP5 scaffolded (tests pending)
                        |                      |
                        |  common: config,     |
                        |  logger+redaction,   |
                        |  envelope, errors,   |
                        |  Prisma, Redis       |
                        +----+-----------+-----+
                             |           |
                        PostgreSQL     Redis
                        (truth)     (jobs/timers)
```

## Trust boundaries

| Boundary                  | Rule                                                                                                                                                                                      |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Client to API             | The client is untrusted. It may be modified, replayed, or offline. Never accept a client-supplied alert state, stage, restriction level, role, or task selection (Global Rules 3, ADR-9). |
| API to AI providers       | Only `src/modules/ai/` may talk to a provider. Only metadata leaves; journal text leaves only under a signed DPA (Global Rule 6, ADR-5).                                                  |
| API to PostgreSQL         | Runtime uses the restricted `Solace_app` role. Append-only tables have no UPDATE or DELETE grant (Global Rule 5).                                                                        |
| API to Redis              | Redis is disposable. Alert state is never only in Redis (ADR-3).                                                                                                                          |
| Therapist to patient data | Every read is filtered by an active connection in the service layer, not only in a guard. No connection returns 404, not 403.                                                             |

## Crisis path (planned, CP2)

```
text ──► deterministic Tier 3 detector (versioned phrase list)  ──► tier3
             │  always runs, always first, no AI, no network
             └─► AI (Groq → Cerebras → OpenRouter), timeout 1800ms
                        └─► tier1 / tier2 signal or possible_concern
crisis_events (append-only) ──► crisis_alerts (state) ──► alert_events (append-only)
                                    │
                                    └─► BullMQ delayed steps 0 / 30m / 2h / 6h
                                        escalation-reconcile on boot + every 5m
```

The AI can add a signal. It can never suppress a Tier 3 decision, delay it, or move an
alert state (ADR-4).

## Failure modes

| Dependency down   | Behaviour                                                                                                                                            |
| ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| AI providers      | Journal save succeeds; scan queued with `analysisStatus=queued`; safety-team flag on repeated failure. Crisis check returns the rule-based decision. |
| PostgreSQL        | `/ready` 503. Crisis check still decides Tier 3 from rules and queues persistence (Phase 7). Never an empty success.                                 |
| Redis             | Alerts are not lost; the reconciler re-schedules missing timers from PostgreSQL on boot. `/ready` 503.                                               |
| FCM / SMS / email | Retried with backoff. Failure is logged and raised to the safety team; the alert state is unchanged. The client always shows a dialer link.          |

## Threat surface

`[PLANNED]` Phase 10 adds the full model. Targets: stolen phone, controlling relative,
stolen therapist password, leaked backup, malicious provider response.

## Decisions

See `docs/adr/ADR-001` through `ADR-010`. ADR-010 (hosting) is still open (OD-8).

## Known deviations from the plan

- `MIGRATION_DATABASE_URL` was added to the configuration table so migrations run as the
  owner role while the service runs as `Solace_app`. Without it the append-only grants
  would be meaningless.
- `docs/spec/Solace-spec.md` and `plan-frontend.md` are not in the repository. Requirements
  in `docs/requirements.md` are derived from `docs/plan-backend.md` and tagged `[ASSUMPTION]`.
