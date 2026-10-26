# Between — Android App Requirements (frontend)

> Source: `docs/trauma-recovery-app-project-idea.md` (spec) sections 2, 4, 6, 7, 8, 10, 11, 12, 13, 14, 15, 17. Scope: what the Flutter app owns. Where the spec describes server-owned behaviour (alert states, escalation timers, restriction levels, task selection, stage model), the requirement is to **display what the server returns** — never to compute it (Global Rule 2, backend ADR-9).
>
> Read along with `apps/mobile/docs/architecture.md` and `docs/plan-frontend.md`.

## REQ-APP-OPEN — Opening question (spec 6.1)

| ID | Requirement |
|---|---|
| REQ-APP-OPEN-01 | One opening question on launch for a logged-out patient: "I need help right now" vs "I'm okay, just exploring". |
| REQ-APP-OPEN-02 | "I need help right now" routes to the grounding set immediately, with crisis resources visible before anything else. |
| REQ-APP-OPEN-03 | "I'm okay, just exploring" routes to the 8-screen onboarding. Onboarding is postponed, never skipped: the help-first path completes full onboarding before reaching the app. |

## REQ-APP-ONB — Onboarding (spec 6.1)

| ID | Requirement |
|---|---|
| REQ-APP-ONB-01 | Eight screens in order: Welcome (what app is/is not, crisis resources visible pre-account), Account (email, password, "I am 18 or older"), Consent (individual toggles, expandable explanations), Restriction warning (before the survey), Survey, Warm results, Preferences, Therapist connection prompt. |
| REQ-APP-ONB-02 | No name collected during onboarding (first name is optional at results, spec 6.1 screen 6). |
| REQ-APP-ONB-03 | Under-18 answer: hard-stop screen, age-appropriate resources, no account created. |
| REQ-APP-ONB-04 | Consent: each toggle is an item sent to the server (`POST /v1/consents`); required items (mood/task data, crisis detection, Tier-3 auto-alert) snap back on if toggled off, with the explanation visible. Progress persists across app close. |
| REQ-APP-ONB-05 | Onboarding shows the three one-time disclosures verbatim (crisis scanning cannot be off; revoking stops future viewing only; external AI analysis of some journal content). |
| REQ-APP-ONB-06 | Survey: one question per screen, progress saved per question, no raw scores shown. A self-harm item triggers the soft check-in overlay immediately after that question. Abandonment after PCL-5 keeps partial results. |
| REQ-APP-ONB-07 | Results screen: plain-language summary, provisional placement wording, never a stage number. Retake is a Settings action with a 14-day cooldown enforced by the server (client renders cooldown state). |
| REQ-APP-ONB-08 | Preferences: category multi-select (none selected → balanced spread; server decides), reminder time default 9:00. |
| REQ-APP-ONB-09 | Therapist prompt: email invite or therapist code entry, or clearly-visible "I'll do this later" with one plain-language confirmation of what happens next (Stage-1 only, invite resurfaces). |
| REQ-APP-ONB-10 | First-run dashboard shows a single "Today's Focus" tooltip, shown once. No task available → grounding shown (server state). |

## REQ-APP-HOME — Dashboard (spec 6.3)

| ID | Requirement |
|---|---|
| REQ-APP-HOME-01 | One dominant element: Today's Focus (name, one-line description, time estimate, category icon, Start, "Why this task?"). Everything else subordinate. |
| REQ-APP-HOME-02 | Mood check-in reachable from home, ~10 seconds, above the fold. |
| REQ-APP-HOME-03 | Crisis button persistent and always visible, visually quiet, bottom corner. |
| REQ-APP-HOME-04 | Below the fold: 7-day snapshot (mood + task completion, no gamification), therapist panel (status/invite), Day-1 safety-plan card. |
| REQ-APP-HOME-05 | Never shown: stage indicator, recovery percentages, streaks, urgent badges, raw scores. |

## REQ-APP-TASK — Daily tasks (spec 5.3, 6.4, 18)

| ID | Requirement |
|---|---|
| REQ-APP-TASK-01 | Task comes from `GET /v1/today`. One primary per day; the client renders what the server returns, including Friday tasks and the optional weekly reflection. |
| REQ-APP-TASK-02 | Swap: one question ("what are you feeling right now?" — five options), server picks the alternative (`POST /v1/today/swap`). Client enforces no swap limit locally; server rejects a second swap and the app renders the server copy. |
| REQ-APP-TASK-03 | "Did this help?" one tap after completion (`POST /v1/tasks/{id}/feedback`). Multiplying the signals is server work: the app sends the tap. |
| REQ-APP-TASK-04 | "Too hard" acknowledgement screen: "some things are better worked through with a therapist", options visible. |
| REQ-APP-TASK-05 | New-category consent prompt before the category appears, with two visually equal options; "Not yet" defers per the server's response. |
| REQ-APP-TASK-06 | "Why this task?" plain-terms explanation (`GET /v1/tasks/{id}/why`). |

## REQ-APP-JRN — Journals (spec 6.6, 14.3)

| ID | Requirement |
|---|---|
| REQ-APP-JRN-01 | Two physically and visually separate journals: Recovery (stage-gated by the server; locked for new entries at Level 2+, history stays readable) and Personal (always available, never shared with the therapist). |
| REQ-APP-JRN-02 | One unified privacy setting with the three states (hidden / progress summary / full), set on the server; the client never derives access. |
| REQ-APP-JRN-03 | Point-of-choice wording shown **before** the patient writes (exact copy in `docs/copy.md`). |
| REQ-APP-JRN-04 | Monitoring-off state: the client shows "Crisis monitoring is off. Entries are not scanned." and the automatic therapist read-access notice, per the server's state. Monitoring off + journal hidden simultaneously is impossible; the UI never offers that combination. |
| REQ-APP-JRN-05 | Journal saves always succeed client-side (queued offline, REQ-APP-OFF-04); a failed never blocks the save. |

## REQ-APP-CONN — Therapist connection (spec 8)

| ID | Requirement |
|---|---|
| REQ-APP-CONN-01 | Invite by email or therapist code (`/v1/patient/invites`, `/by-code`). Pending state shows nothing until both gates pass. |
| REQ-APP-CONN-02 | Confirmation screen after server says accepted: show name, credentials, photo as returned by `GET /v1/patient/connections/pending`; Yes/Decline are visually equal. |
| REQ-APP-CONN-03 | Unlock moment screen when the connection becomes active. |
| REQ-APP-CONN-04 | Wrong-person flag (`/flag-wrong`) with the neutral copy. Decline leaves no patient data anywhere. |
| REQ-APP-CONN-05 | Patient-side disconnect only (`DELETE`-style flow in Settings); the therapist has no disconnect control in this app. Disconnection works with no explanation to show and no grace period rendered. |

## REQ-APP-CRISIS — Crisis system, patient side (spec 10.5, 11, 12.3)

| ID | Requirement |
|---|---|
| REQ-APP-CRISIS-01 | Crisis screen opens with no network, no login, no server call, in under one second. Numbers are tap-to-call; the dialer fallback is the ultimate fallback (10.5). |
| REQ-APP-CRISIS-02 | Every number shows last-verified date and operating hours from bundled `assets/crisis/resources.json`. Copy: "Here is a number you can call right now." |
| REQ-APP-CRISIS-03 | Tier 2: consent prompt rendered on the crisis surface exactly as the server state dictates; "No" means no detail shared. |
| REQ-APP-CRISIS-04 | Patient-facing alert copy comes from the state→copy map (Phase 5). "Notified" language only at `delivered` or later, verbatim from the server state. |
| REQ-APP-CRISIS-05 | Offline crisis: "What to do right now" card immediately, contacts + crisis line with tap-to-call, and the honest unreachable copy. Never a technical reason; never a claim anyone was notified. |
| REQ-APP-CRISIS-06 | Escalation-to-organisation state is shown calmly and directly when the server says so (Issue 06). |
| REQ-APP-CRISIS-07 | Grounding check-out appears after processing tasks per the server's task flags; crisis resources always visible on it. |

## REQ-APP-OFF — Offline behaviour (spec 12)

| ID | Requirement |
|---|---|
| REQ-APP-OFF-01 | Offline from cold start: the six grounding tools, crisis resources, emergency contacts, safety plan (last synced, read-only), fast exit, cached today's task labelled "loaded earlier", 30-day mood read-only. |
| REQ-APP-OFF-02 | Grounding opens <1 s, zero spinners/placeholders, works logged out with an expired token, works offline. |
| REQ-APP-OFF-03 | Offline notice is calm, never an error, never blocks grounding; dimmed features say "This needs a connection. Your grounding tools are available now." |
| REQ-APP-OFF-04 | Check-ins, journal entries and crisis events queue locally (encrypted), sent in `clientCreatedAt` order, retried 2/10/30 min. Duplicates verified by `clientId`. |
| REQ-APP-OFF-05 | Failed sync copy: "Couldn't save your entries. We'll try again shortly." |
| REQ-APP-OFF-06 | Initial and historical flags, alert dispatch, stage changes: all server decisions. Offline-written entries carry `clientCreatedAt`; freshness classification is the server's. |

## REQ-APP-SAFE — Device safeguarding (spec 13)

| ID | Requirement |
|---|---|
| REQ-APP-SAFE-01 | `FLAG_SECURE` on every screen showing patient or therapist data, and on the crisis screen. CI test enforces coverage. |
| REQ-APP-SAFE-02 | Discreet notifications by default: lock-screen text has no mental health content; three channels with `VISIBILITY_SECRET`/`PRIVATE` per plan Phase 8; neutral public variant text. |
| REQ-APP-SAFE-03 | Biometric lock behind 30 s backgrounding (FD-6); crisis screen and fast exit never behind the lock; `local_auth` failure falls back to passcode, never to "no lock". |
| REQ-APP-SAFE-04 | Fast exit always visible on patient screens, one tap, never requires auth, clears the task from recents; neutral-home setting is off by default and explained in Settings. |
| REQ-APP-SAFE-05 | Permissions limited to `INTERNET` and `POST_NOTIFICATIONS`. `allowBackup=false`; data-extraction rules exclude all app files. |

## REQ-APP-PRIV — Privacy surfaces (spec 14)

| ID | Requirement |
|---|---|
| REQ-APP-PRIV-01 | Access log screen: timestamp + data type only, read-only. |
| REQ-APP-PRIV-02 | Export: request → ready (secure link, 24 h expiry shown) → expired states. |
| REQ-APP-PRIV-03 | Delete account: two-step with plain-language summary of what disappears, when, and what is kept (crisis logs 24 months, consents indefinitely), confirmation email reference. |
| REQ-APP-PRIV-04 | Pause data processing: read-only mode state from the server. |
| REQ-APP-PRIV-05 | Recession of monitoring consent: second-confirmation flow per server (`withdrawals` + `confirm` endpoints). |

## REQ-APP-THRP — Therapist role (same binary) (spec 9.5, 9.2–9.6, 11.5, B01)

| ID | Requirement |
|---|---|
| REQ-APP-THRP-01 | Role comes only from `GET /v1/me`. Router guard: patients cannot reach `/t/*`, therapists cannot reach patient-only routes. Logout clears all role state. |
| REQ-APP-THRP-02 | Onboarding: platform description, licence/professional body/country, DSA (scroll-to-end before accept), crisis responsibilities with required checkbox, AI explainer, emergency-contact statement (8.4), recorded as separate server acknowledgements. Pending-verification screen (waiting/verified/suspended states). |
| REQ-APP-THRP-03 | Invites: accept shows patient first name only; "pending patient confirmation" until the second gate. |
| REQ-APP-THRP-04 | Patient list: groups in server order, never re-sorted; "No recent activity" is its own neutral-status section. |
| REQ-APP-THRP-05 | Patient detail: full survey results, safety plan only if shared with field 4 "Personal — not shared", journal per the patient's setting, read-only AI summary with the "AI Draft" label and the permanent suggestion-only note where the server returned one. |
| REQ-APP-THRP-06 | Alert view: elapsed time (`elapsedSeconds`), trigger type only, recent mood from the server, quick actions, checklist (3 items; resolve disabled until all three), 60-second undo via the server with "Too late to undo" on `UNDO_WINDOW_CLOSED`, "does not replace clinical judgment" notice, re-auth before content when the session is older than 4 h (`REAUTH_REQUIRED`). |
| REQ-APP-THRP-07 | Settings: crisis notifications shown always-on and locked. |
| REQ-APP-THRP-08 | Therapist patient data lives in memory only — nothing about patients is persisted locally (FD-9, schema-asserted). |

## Non-functional requirements

| ID | Requirement | Measured in |
|---|---|---|
| NFR-APP-01 | Crisis screen and grounding open <1 s offline, no login | Phase 11 device test |
| NFR-APP-02 | Crisis numbers reachable in two taps from anywhere | Phase 3 nav walk |
| NFR-APP-03 | Touch targets ≥44×44 dp; text scales to 200% without clipping/overlap on crisis + home | Phase 3/11 tests |
| NFR-APP-04 | Every interactive element has a semantic label; motion respects `disableAnimations` | Phase 3 a11y tests |
| NFR-APP-05 | Cold start to grounding <2 s mid-range device; cold start to home <2 s online | Phase 12 trace |
| NFR-APP-06 | Creature/motion 60 fps, no sustained jank | Phase 12 DevTools |
| NFR-APP-07 | Release APK <25 MB (proposed), 16 KB page-aligned | Phase 13/15 |
| NFR-APP-08 | Android 7.0 (API 24) min; API 36 target/compile; Kotlin glue only | Phase 1 build config |
| NFR-APP-09 | No secrets in APK; no analytics/tracking/ad SDK; logs redacted and release-stripped | Phase 10 scan |
| NFR-APP-10 | All user-visible strings in English + Bengali via ARB (`lib/l10n/`); no hard-coded copy | Phase 3 grep test |

## Traceability notes

- Server-owned concepts the client must never compute: alert state machine (11.5), escalation timeline (11.3), restriction levels (10.3), freshness window (11.6), stage model (4.2), task selection/swap-limit enforcement (5.3), patient grouping (9.2), journal access rules (6.6), monitoring states (14.3).
- Spec conflicts touching the frontend: none change client logic (all are server-side numbers/timings); one affects wording only — Personal-Journal scanning promise (spec 22.2 #4) → point-of-choice copy uses neutral wording until resolved (see `docs/copy.md`).
- Out of scope list: `docs/plan-frontend.md` — Out of Scope section. Not repeated here.
