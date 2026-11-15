# Requirements

Derived from `docs/plan-backend.md`. The consolidated spec (`docs/spec/Solace-spec.md`)
referenced by the plan is **not in this repository**, so every requirement below is tagged
`[ASSUMPTION]` until it can be checked against the spec. IDs are stable and tests reference
them by name.

## Accounts and sessions

| ID          | Requirement                                                                               | Source        | Status                                |
| ----------- | ----------------------------------------------------------------------------------------- | ------------- | ------------------------------------- |
| REQ-AUTH-01 | A patient can sign up with email and password. Passwords are hashed with argon2id.        | Plan 5, ADR-7 | `[ASSUMPTION]` Implemented (argon2id) |
| REQ-AUTH-02 | Under-18 signup is rejected (OD-3).                                                       | OD-3          | Implemented                           |
| REQ-AUTH-03 | Access token 15 min, refresh token 30 days, rotated on every use.                         | ADR-7         | Implemented                           |
| REQ-AUTH-04 | Reuse of a rotated refresh token revokes the whole session family.                        | ADR-7         | Implemented                           |
| REQ-AUTH-05 | A therapist account can only exist after an invite is accepted. No open therapist signup. | ADR-8         | `[PLANNED]`                           |
| REQ-AUTH-06 | `GET /v1/me` returns the server-assigned role; the client routes on it.                   | ADR-8         | Implemented                           |

## Consent

| ID             | Requirement                                                                                                                              | Source        | Status                                                          |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ------------- | --------------------------------------------------------------- |
| REQ-CONSENT-01 | Consent records are append-only and never deleted.                                                                                       | Global Rule 5 | Implemented (DB grants)                                         |
| REQ-CONSENT-02 | Withdrawing crisis monitoring needs two confirmation steps.                                                                              | R-CONSENT-3   | Implemented                                                     |
| REQ-CONSENT-03 | Monitoring cannot be OFF while the journal is hidden from the therapist.                                                                 | R-CONSENT-2   | Implemented (consent path; journal route CP4)                   |
| REQ-CONSENT-04 | Monitoring OFF grants the therapist read access to the Recovery Journal and notifies the therapist of the state change, with no content. | R-CONSENT-1   | Partial: access flip implemented; therapist notification in CP4 |

## Surveys

| ID          | Requirement                                                                        | Source  | Status                                                                |
| ----------- | ---------------------------------------------------------------------------------- | ------- | --------------------------------------------------------------------- |
| REQ-SURV-01 | Item-level survey responses are stored; scores are computed and stored.            | Phase 2 | Implemented                                                           |
| REQ-SURV-02 | PHQ-9 item 9 is recorded and shown as a possible concern, never as Tier 3 (OD-10). | OD-10   | Implemented `[ASSUMPTION]`; severity bands wait for clinical sign-off |
| REQ-SURV-03 | A retake inside 14 days is rejected.                                               | Phase 3 | Implemented                                                           |

## Safety plan

| ID          | Requirement                                                          | Source  | Status                                      |
| ----------- | -------------------------------------------------------------------- | ------- | ------------------------------------------- |
| REQ-PLAN-01 | Five fields, encrypted at rest, with a key id.                       | ADR-6   | Implemented (AES-256-GCM, AAD per row)      |
| REQ-PLAN-02 | Field 4 is never shared with the therapist, even when sharing is on. | Phase 2 | Implemented (therapist view arrives in CP3) |

## Crisis

| ID            | Requirement                                                                                                              | Source             | Status                      |
| ------------- | ------------------------------------------------------------------------------------------------------------------------ | ------------------ | --------------------------- |
| REQ-CRISIS-01 | Explicit Tier 3 language is detected by a deterministic, versioned rule set that runs first and independently of the AI. | ADR-4              | `[PLANNED]`                 |
| REQ-CRISIS-02 | The crisis check responds within 2 s p95; the AI timeout stays under 2 s.                                                | Phase 0            | Config enforced             |
| REQ-CRISIS-03 | Crisis endpoints are never rate-limited into silence and never return 503 for a Tier 3 decision.                         | Global Rules 8, 11 | `[PLANNED]`                 |
| REQ-CRISIS-04 | Alert state transitions follow the B01 machine. Invalid transitions throw.                                               | Phase 2            | Implemented (pure function) |
| REQ-CRISIS-05 | Escalation at 0 / 30 min / 2 h / 6 h, each step once, surviving restart.                                                 | R-ESC-1, ADR-3     | `[PLANNED]`                 |
| REQ-CRISIS-06 | Resolve requires all three checklist items. Review opens a 60-second undo window.                                        | R-ALERT-1          | `[PLANNED]`                 |
| REQ-CRISIS-07 | Without a therapist, an alert auto-closes 24 h after external escalation with a note.                                    | R-ESC-3            | `[PLANNED]`                 |
| REQ-CRISIS-08 | Tier 2 never auto-contacts a trusted contact; Tier 3 does only as a last resort, neutrally.                              | R-TIER-2           | `[PLANNED]`                 |

## Offline sync

| ID          | Requirement                                                                                                      | Source  | Status                                               |
| ----------- | ---------------------------------------------------------------------------------------------------------------- | ------- | ---------------------------------------------------- |
| REQ-SYNC-01 | Dedupe by `clientId`; a repeat returns the original result with `duplicate: true`.                               | Phase 3 | Implemented (survey responses; other writes pending) |
| REQ-SYNC-02 | Freshness uses the creation timestamp; the window is 2 h (OD-1).                                                 | OD-1    | Config default                                       |
| REQ-SYNC-03 | Historical entries get a flag, not an escalation timer, but explicit Tier 3 language still notifies once (OD-9). | OD-9    | `[PLANNED]`                                          |

## Connections

| ID          | Requirement                                                                      | Source   | Status                      |
| ----------- | -------------------------------------------------------------------------------- | -------- | --------------------------- |
| REQ-CONN-01 | A therapist can never activate a connection; only the patient can confirm.       | R-CONN-3 | Implemented (pure function) |
| REQ-CONN-02 | One active therapist at a time.                                                  | R-CONN-2 | `[PLANNED]`                 |
| REQ-CONN-03 | Only the patient can end a connection; access stops immediately.                 | R-CONN-1 | `[PLANNED]`                 |
| REQ-CONN-04 | An invite expires after 48 h (OD-2).                                             | OD-2     | Config default              |
| REQ-CONN-05 | A therapist requesting a patient without an active connection gets 404, not 403. | Phase 3  | `[PLANNED]`                 |

## Tasks, check-ins, journals

| ID           | Requirement                                                                                                      | Source       | Status                                      |
| ------------ | ---------------------------------------------------------------------------------------------------------------- | ------------ | ------------------------------------------- |
| REQ-TASK-01  | One swap per day.                                                                                                | R-SWAP-1     | `[PLANNED]`                                 |
| REQ-TASK-02  | Stage 2 tasks unlock only with an active therapist connection.                                                   | R-STAGE-3    | `[PLANNED]`                                 |
| REQ-TASK-03  | Three low-mood days or three skipped tasks quietly simplify tasks; no announcement.                              | R-SIMPLIFY-1 | `[PLANNED]`                                 |
| REQ-JOURN-01 | Journal save always succeeds, even when the AI is down; the scan is queued.                                      | Phase 0      | `[PLANNED]`                                 |
| REQ-JOURN-02 | Journal text and the safety plan are AES-256-GCM encrypted before storage.                                       | ADR-6        | Partial: safety plan in CP1; journal in CP4 |
| REQ-JOURN-03 | The Personal Journal is crisis-scan only: no sentiment, no personalisation, never visible to a therapist (OD-4). | OD-4         | `[PLANNED]`                                 |

## Restriction and stage

| ID              | Requirement                                                                          | Source           | Status      |
| --------------- | ------------------------------------------------------------------------------------ | ---------------- | ----------- |
| REQ-RESTRICT-01 | Level 1 days 1–14, level 2 days 15–30, level 3 from day 31.                          | R-RESTRICT-1     | `[PLANNED]` |
| REQ-RESTRICT-02 | The timer pauses while an invite is pending, capped at 14 days (OD-6).               | R-RESTRICT-1     | `[PLANNED]` |
| REQ-RESTRICT-03 | Locked, never erased: existing content stays readable, only new entries are blocked. | R-RESTRICT-2     | `[PLANNED]` |
| REQ-RESTRICT-04 | Crisis resources and grounding are never restricted.                                 | R-RESTRICT-3     | `[PLANNED]` |
| REQ-STAGE-01    | Stage never advances on time alone.                                                  | R-STAGE-1        | `[PLANNED]` |
| REQ-STAGE-02    | With a therapist connected, advancement needs approval and a 48 h hold.              | R-STAGE-2        | `[PLANNED]` |
| REQ-STAGE-03    | Stage is internal and never returned to a patient.                                   | R-STAGE, Phase 4 | `[PLANNED]` |

## Privacy, notifications, audit

| ID           | Requirement                                                                         | Source        | Status                                         |
| ------------ | ----------------------------------------------------------------------------------- | ------------- | ---------------------------------------------- |
| REQ-NOTIF-01 | Max one notification per type per day, two per 24 h, quiet hours 22:00–08:00 local. | R-NOTIF-1     | `[PLANNED]`                                    |
| REQ-NOTIF-02 | Crisis types cannot be disabled.                                                    | R-NOTIF-4     | Implemented (403 + non-disableable projection) |
| REQ-NOTIF-03 | Push payloads carry no mental health content.                                       | R-NOTIF-5     | `[PLANNED]`                                    |
| REQ-AUDIT-01 | Access log records timestamp and data type only, forward-only, append-only.         | R-AUDIT-1     | Implemented (DB grants)                        |
| REQ-PRIV-01  | Deletion is two-step; crisis logs kept 24 months, consent indefinitely.             | R-DELETE-1    | `[PLANNED]`                                    |
| REQ-PRIV-02  | Pause processing makes the account read-only; crisis monitoring follows consent.    | R-PRIVACY-1   | `[PLANNED]`                                    |
| REQ-SEC-01   | No sensitive field reaches a log line, at any depth.                                | Global Rule 4 | Implemented (redaction + tests)                |
| REQ-SEC-02   | No hardcoded secrets; `npm audit --omit=dev` clean of high/critical.                | Phase 10      | `[PLANNED]`                                    |
