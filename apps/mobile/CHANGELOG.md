# Changelog

## [Unreleased]

- Phase 14 documentation: architecture, screens, offline, release docs added; usability + performance docs created; device-test log recorded.
- Phase 13 CI workflow defined (`.github/workflows/app.yml`); `CODEOWNERS`; `.pre-commit.sh`.
- Phase 12 performance rules adopted: creature stops on background, animations only via `transform`/`opacity`, `ListView.builder` for long lists.

## [0.1.0] MVP — 2026-10-27

- Phase 0: requirements, architecture, copy rules.
- Phase 1: toolchain pinned (Flutter 3.47); design tokens (`tokens.json` → `tokens.g.dart`); env + redacted logging.
- Phase 2: generated dart-dio client from frozen `openapi.yaml`; `result.dart`; `error_registry.dart`; drift + SQLCipher schemas; `CONTRACT.lock`.
- Phase 3: design widgets (pills, chip, glass, hairline, step tabs, expandable tile); companion creature (4 states, reduced-motion gate); crisis/grounding/safety-plan screens; ARB en+bn expanded.
- Phase 4: auth (TokenStore, AuthSession, AuthInterceptor, screens + guard); therapist onboarding (welcome, DSA scroll gate, crisis response, AI how, emergency contact); invite (first name only, no data before confirmation); patient list + detail; alert view (elapsed server time, 3-item checklist, 60s undo, re-auth gate, AI summary); `FLAG_SECURE` via native channel.
- Phase 5: queue worker (sequential drain, retry 2/10/30 capped at 30, crash-safe); `CopyKeys` + `offline_copy.dart`; `QueueStore` + `Sender`; migration v1→v2 (skew seconds).
- Phase 6: deferred — FCM + fetch-on-open (no WebSocket).
- Phase 7: manifest hardening (`allowBackup="false"`, extraction rules); DB delete on logout; encrypted DB tests; crash-safe replay.
- Phase 8: notification channels; `FcmAdapter` (NoOp + Fake); `BiometricAdapter`; `UrlAdapter`; `FastExitAdapter`; discrete-notification audit.
- Phase 9: error mapping; redacted logging; diagnostics (4 fields only); `main.dart` error handling; diagnostics schema test.
- Phase 10: biometric lock (fake-clock 30s); HTTPS config; permissions audit; secrets scan; `FLAG_SECURE` on every screen via mixin (global set in main); root limitation documented.
- Phase 11: tests — 95 pass + 1 skipped; screen smoke; design golden review; creature states; integration (crisis flow, therapist alert); validators; fake server.
- Phase 12: performance rules + creature lifecycle fix.
- Phase 13: CI workflow + `CODEOWNERS` + pre-commit.

## Planned (not in MVP — record when resolved)

- WebSocket real-time layer (Phase 6) — deferred until post-MVP.
- Personal Journal point-of-choice wording (spec 22.2 #4 conflict) — blocked until spec owner resolves.
- Bangla full review (Issues 24/25) — all bn strings stay `[REVIEW-PENDING]`.
- Therapist surface fully native — already in binary (F-ADR-8); spec §2 "Next.js web app" superseded.
- Root / tampering detection — documented as limitation; revisit before public release.
- Auto-update manifest — `UPDATE_MANIFEST_URL` optional; not required for MVP.
- Crash reporting (FD-7) — deferred; redacted logs only.
- Real-device device tests for crisis/airplane/FLAG_SECURE — deferred to Phase 12 device test / release.
