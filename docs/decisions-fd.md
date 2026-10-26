# FD Decision Memo — for owner sign-off (Phase 0 gate)

> Each closed only when recorded as Accepted in the ADR table of `docs/plan-frontend.md`. Defaults below are the plan's proposed answers, checked for consistency against the spec and the backend contract.

| ID | Question | Proposed default | My review | Blocks | Risk if wrong |
|---|---|---|---|---|---|
| FD-1 | Dart client generator | `openapi-generator` `dart-dio`, pinned version, committed output | Contract has 60+ paths and complex envelopes; dio gives interceptors (token refresh, envelope unwrap) stripping is clean. Alternative `dart` built-in target lacks interceptor story for `Result`-wrapping | Phase 2 | Wrong pick = regenerate churn into every repo |
| FD-2 | Fraunces placement | ≤2 elements: onboarding closing line + Home empty-state line | Matches DESIGN_SYSTEM.md §3 ("seasoning, not the voice"). Bengali strings never use it (no glyphs) | Phase 3 | Extra placements creep in → font budget grows |
| FD-3 | rem grid → native units | Type in `sp` at fixed steps per size class (compact/medium/expanded per DESIGN_SYSTEM §3.1); layout in `dp`; system font scale respected up to 200% | Confirmed conversion table exists in DESIGN_SYSTEM §3; viewport scaling has no native equivalent. Deliberate visual downgrade from the landing, recorded | Phase 1 tokens | None technical — accessibility-aligned |
| FD-4 | Fast exit "neutral home" | `finishAndRemoveTask` → launcher; neutral screen only if the Settings opt-in is enabled; never auth-gated | App must still land somewhere if user reopens; launcher-return matches spec 13 | Phase 10 | Browser-neutral-screen variant adds no safety and loses focus |
| FD-5 | Creation timestamps | Device clock as `clientCreatedAt`; monotonic offset records skew >5 min; displayed time never adjusted | Matches backend OD-9 and spec 11.6 (creation time, never sync time) | Phase 5 | Low |
| FD-6 | Biometric lock timing | Lock after >30 s backgrounded; cold-start lock when enabled; crisis + fast exit exempt | Spec 13 first-build; backend S16 covers therapist 4 h re-auth | Phase 10 | Never exempt crisp crisis screen — smallest safe number chosen |
| FD-7 | Crash reporting | None; local redacted logs only; revisit before any third-party tool | Spec 14.9 Sentry row is the *landing* error-monitoring for web; app MVP stays clean. Competition build: judges see honesty, not crash analytics | Phase 9 | none |
| FD-8 | Update notice | Optional, off-by-default, static GitHub manifest checked on launch only if user opted in | Spec forbids tracking; apks need install steps anyway on landing | Phase 15 | none |
| FD-9 | Therapist data on device | Memory only; nothing about patients persisted | Spec 12.4 + plan; enforced by schema test + logout integration test | Phase 4/7 | Data a stolen therapist phone leaks = worst-case scenario of the app |
| FD-10 | Role source | `GET /v1/me` only; never a UI choice; guard-tested both directions | Contract confirms path exists | Phase 4 | bypassable role = safety violation |

Package-name note (ADR-F10): current skeleton is `com.between.between`. Plan wanted `com.between` only if owner confirms. Either works; record the chosen one in the ADR.

## Related spec conflicts (Section 22.2) — frontend impact

| Conflict | Frontend impact | Status needed |
|---|---|---|
| #4 Personal Journal scanning | Point-of-choice copy wording (`docs/copy.md` debt #1) | Owner decides; copy stays neutral interim |
| #1 freshness 2 h vs 6 h, #2 invite expiry, #5 escalation copy | None — all server-computed; client renders verdicts | Owner/backend; no client action |
| #3 age 18+ | Already per spec in requirements (REQ-APP-ONB-03) | closed by later decision |
