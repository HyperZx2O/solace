# Implementation Plan for "Between: Android App"

> **How to use this file**
> This is the frontend plan for Between, a trauma-recovery companion app. It belongs to Person B (frontend). It covers the Flutter app for both the patient and therapist roles, on Android for the MVP. A coding agent must read this file, and `plan-backend.md`, before writing any code, and re-read the current phase before starting it. Where this plan says "PROPOSED", the decision is not final until the owner records it as Accepted in the ADR table.
>
> The app does not decide anything clinical. It renders what the server returns. If this plan and the spec disagree, the spec wins until an Open Decision resolves the conflict.

---

## Project Overview

| Field | Value |
|---|---|
| Project Name | Between: Android App (`apps/mobile`) |
| Project Type | Mobile App (Flutter). Both patient and therapist roles, one binary |
| Primary Language(s) | Dart. Kotlin only for Android platform glue (`FLAG_SECURE`, notification channels, fast exit) |
| Framework(s) | Flutter 3.47 stable (pinned). Packages listed in the Technology Stack |
| Target Platform | Android. Minimum API 24 (Android 7.0). Target and compile API 36 |
| Deployment Target | APK published on GitHub Releases, linked from the landing page. Not on Google Play for MVP |
| Team / Owner | Person B, frontend owner: [Name] |
| Status | Planning |

### What the app does, in one paragraph

Between helps people work on their trauma recovery between therapy sessions. A patient gets one task a day, a 10-second check-in, two journals, a safety plan, and crisis resources that work without a connection or a login. A connected therapist, using the same app, sees the patients who have invited them, receives crisis alerts, and resolves them with a three-item checklist. The app never decides who is at risk, never computes an alert state, and never picks a task. It shows what the server says, warmly, and it keeps the safety features working when the network does not.

---

## Dependencies

> Filled during planning. Update when a dependency changes.

**What this plan depends on (inputs from others)**

| My Task | Depends On | Owner | Must Complete Before I Can |
|---|---|---|---|
| Generated Dart API client | `services/api/openapi.yaml` frozen at CP0 | Person A | Any screen that calls the API |
| Onboarding on real data | CP1: auth, consent, surveys, safety plan | Person A | Onboarding integration |
| Crisis screen and alert flow | CP2: crisis endpoints, alert states, sync | Person A | Crisis integration and Gate 1 client tests |
| Therapist role on real data | CP3: therapist onboarding, invites, connections, alerts | Person A | Therapist integration |
| Home, tasks, journals on real data | CP4 | Person A | Home integration |
| Crisis resource content with verification dates | Named owner for each organisation, and the verification date (spec 10.5, N04) | Project owner | Crisis screen content, before any real user |
| Bangla copy and survey wording | Bangladeshi licensed therapist and mentor review (Issues 25, 24) | External | Any Bangla string going live |
| Fonts | Licence confirmed for Onest, Fraunces, Noto Sans Bengali (open-licence families, verify) | Person B | Bundling fonts in a release |
| Shader decision | Not applicable. The fluid shader is out of scope for the app (decision 2026-10-22) | Done | Nothing |

**What others depend on from this plan (outputs)**

| My Output | Checkpoint | Who Needs It | Must Be Done Before They Can |
|---|---|---|---|
| Review of `openapi.yaml` before freeze | CP0 | Person A | Contract freeze |
| Screen states and copy rules (Phase 3) | Before CP2 | Person A (for wording of alert states) | Alert copy in the backend's notification text |
| Token package and generated Dart constants | Phase 1 | Shared (landing and app) | Any visual work on the landing page |
| Release APK and checksum | Phase 15 | Project owner | Landing download link |
| Client-side test results for S4, S5, S8, S13, S15, S16 | CP2 and CP3 | Person A | Gate 1 sign-off |

---

## Global Rules

These rules apply to every phase and every coding agent working on this app. They are non-negotiable.

1. **Never implement a future phase early.** If a later checkpoint needs a feature, wait for it.
2. **The app never decides clinical or safety matters.** It never computes alert state, escalation timers, restriction level, stage, task selection, or the therapist's patient groups. It displays what the server returns.
3. **The crisis screen and grounding tools never depend on the network, a login, or the AI.** They open in under one second, offline, with an expired token.
4. **No secrets in the APK.** Configuration comes from `--dart-define` for non-secret values only (API base URL, environment name, version). Nothing sensitive ships in the binary or in `assets/`.
5. **Never log health content, names, emails, tokens, or journal text.** Debug logs are redacted and stripped from release builds. No third-party analytics. No crash reporter that receives unscrubbed content.
6. **Patient-facing copy never says someone was notified** unless the server state is `delivered` or later. Show "Your therapist has been notified" only when the server says so. Show the crisis numbers always.
7. **Patients never see a stage.** No stage name, label, progress or change anywhere in the patient UI.
8. **Every user-visible string exists in English and Bengali.** No hard-coded copy in widgets. Strings come from ARB files in `lib/l10n/`.
9. **Every screen that shows patient or therapist data sets `FLAG_SECURE`.** This blocks screenshots and hides content in recents.
10. **Every screen has loading, error, empty and offline states** before any data logic is added.
11. **Notifications are discreet by default.** Lock-screen text contains no mental health content. Crisis notifications use a channel that cannot be made public by the user.
12. **Safety-critical code needs two reviewers.** Changes under `lib/features/safety/`, `lib/features/therapist/alerts/`, `lib/data/local/`, `lib/features/lock/`, or the Android `MainActivity` and notification code need approval from Person A and Person B.
13. **Accessibility is not optional.** Touch targets at least 44 by 44 dp. Respect system font scale up to 200%. Every interactive element has a semantic label. Motion respects `disableAnimations`.
14. **Distinguish implemented features from planned ones** at all times. Stubs are marked `[PLANNED]` in code and docs. A stub is never presented as complete.
15. **Fail toward safety.** If the app cannot tell whether a crisis action succeeded, it shows the crisis numbers and says it cannot reach the care team. It never claims success.

---

## Open Decisions

> Each has a proposed default. A decision closes only when recorded in the ADR table below.
>
> **Recorded 2026-10-26:** FD-1 to FD-10 closed — all proposed defaults accepted by the owner (sign-off rationale: `docs/decisions-fd.md`). Application ID confirmed as `com.between.between`.

| ID | Question | Proposed default | Blocks |
|---|---|---|---|
| FD-1 | Dart client generation: which generator? | `openapi-generator` with the `dart-dio` target, pinned version, output committed | CP0 |
| FD-2 | Fraunces: where in the app? | At most two elements, matching the landing's rule (design doc section 3). Proposed: the onboarding closing line and the empty-state line on Home | Phase 3 |
| FD-3 | rem grid to native units | Type in `sp` at fixed steps per size class. Layout in `dp`. No viewport scaling (the web-only approach has no native equivalent, design doc 13.2). Needs owner sign-off | Phase 0 |
| FD-4 | Fast exit: what is the "neutral home screen"? | Close the app's task (`finishAndRemoveTask`) and return to the launcher. Shown only after a clear confirmation in Settings. The app opens to a neutral screen on next launch if the setting is on | Phase 10 |
| FD-5 | Clock source for creation timestamps | Device clock recorded as `clientCreatedAt`. Server decides freshness (OD-9 in backend plan). App also records a monotonic offset to flag large clock skew to the server | Phase 5 |
| FD-6 | Biometric lock timing | Required after the app is backgrounded for more than 30 seconds. Never blocks the crisis screen or the fast-exit button | Phase 10 |
| FD-7 | Crash reporting in MVP | None. Local redacted logs only. Revisit with a scrubbing plan before any third-party tool is added | Phase 9 |
| FD-8 | Update notice | A static version manifest on GitHub, checked on launch only if the user allows it. No tracking. Shows "A newer version is available" with a link | Phase 15 |
| FD-9 | Therapist data on the device | Therapist screens keep patient data in memory only. Nothing about patients is written to local storage | Phase 7 |
| FD-10 | Two roles, one binary: how does the app know the role? | From `GET /v1/me` after login. Role is never chosen in the UI. A patient cannot reach therapist screens. Logging out clears all role state | Phase 4 |

### Architecture Decision Records (ADR)

#### F-ADR-1: Flutter for the app
- **Date:** 2026-10-23
- **Status:** Accepted (spec 16)
- **Context:** Android first, then iOS, Windows, macOS and Linux, from one codebase.
- **Decision:** Flutter 3.47, pinned. Dart for all app code.
- **Alternatives considered:** Tauri 2 (rejected: mobile is not its primary focus and there is no native UI alongside the webview). Compose Multiplatform (rejected: iOS is Alpha). React Native (rejected: weak desktop story).
- **Consequences:** Desktop plugins must be checked per platform before iOS or desktop work starts.

#### F-ADR-2: Distribution as an APK on GitHub Releases for MVP
- **Date:** 2026-10-22
- **Status:** Accepted
- **Context:** Avoids the Play closed-test requirement (12 testers, 14 days) for the early release.
- **Decision:** Signed release APK and SHA-256 checksum published on GitHub Releases. Linked from the landing page.
- **Alternatives considered:** Google Play closed testing (deferred). Play is a later decision.
- **Consequences:** No automatic updates. Users must install new versions manually. Signing key loss means existing installs cannot be updated. Target API 36 is kept by choice, not by Play rule.

#### F-ADR-3: No fluid shader in the app
- **Date:** 2026-10-22
- **Status:** Accepted
- **Context:** Design doc section 13.3 identified the multi-pass shader as the hardest part of a native port. The team has decided the shader is not needed in the app.
- **Decision:** The app uses the design's colour, type, motion and creature. The shader stays on the landing page only. The app's stage is the dark surface with hairline rules and the creature.
- **Alternatives considered:** Single-pass AGSL approximation (rejected for now). OpenGL ES port (rejected).
- **Consequences:** Design doc sections 1, 8 and 13.3 must be updated to say the shader is landing-only.

#### F-ADR-4: Design tokens generated into Dart and CSS
- **Date:** 2026-10-23
- **Status:** Accepted (2026-10-26, owner sign-off)
- **Context:** Colours, type, spacing and motion must not drift between the landing and the app.
- **Decision:** `packages/design-tokens/tokens.json` in DTCG format with flat keys that match the current CSS variable names exactly (for example `hero-base`, `glass-fill`). Style Dictionary generates `tokens.css` (for the landing) and `tokens.g.dart` (for the app). Generated files are committed. CI fails if regenerating changes them.
- **Alternatives considered:** Shared JSON read at runtime (rejected: neither CSS nor Dart can read it meaningfully at runtime). Hand-copied values (rejected: drift). Grouped nested keys (rejected: renames every CSS variable and breaks 145 call sites).
- **Consequences:** Three values need a custom Dart format: `gutter` (viewport-relative), `ease-entrance` (a cubic-bezier, becomes a `Cubic` constant), `duration-fast` (becomes a `Duration`). Colour values written as `rgba()` become 8-digit hex in output. Visually identical.

#### F-ADR-5: Native units for the design's responsive scale
- **Date:** 2026-10-23
- **Status:** Accepted (2026-10-26, owner sign-off)
- **Context:** The web design scales every size with viewport width. Native apps do not.
- **Decision:** Type uses `sp` at fixed steps per size class (compact, medium, expanded). Layout spacing uses `dp`. System font scale is respected, so type can grow beyond the design's sizes for accessibility.
- **Consequences:** The app will not look identical to the landing at every width. This is a deliberate downgrade, recorded here.

#### F-ADR-6: Navigation and state management
- **Date:** 2026-10-23
- **Status:** Proposed
- **Context:** Two roles, a guarded safety flow, and a need to test screens without the server.
- **Decision:** `go_router` for navigation with a redirect guard that enforces role and onboarding state. `flutter_riverpod` for state, with providers that wrap repositories so tests can override them.
- **Alternatives considered:** Bloc (rejected: more ceremony for a team of two). Plain `setState` (rejected: no way to test the guards).
- **Consequences:** Every new package is recorded in the PR that adds it.

#### F-ADR-7: Encrypted local database
- **Date:** 2026-10-23
- **Status:** Proposed
- **Context:** Spec 12.4: safety plan, today's task, unsynced journal and check-ins, and 30 days of mood must be encrypted on the device.
- **Decision:** `drift` with SQLCipher. The database key is random, generated once, stored in the Android Keystore through `flutter_secure_storage`, and never written to plain storage.
- **Alternatives considered:** Plain SQLite with an app-level encryption wrapper (rejected: easy to leak a plaintext copy). Hive (rejected: no SQL, weaker tooling for migrations).
- **Consequences:** Key loss means local data is unreadable. The offline queue must be safe to replay from the server copy where possible.

#### F-ADR-8: Role decided by the server, one binary
- **Date:** 2026-10-22
- **Status:** Accepted (team decision: native therapist role in the same app)
- **Context:** No Next.js therapist app. The role split must not be bypassable on the device.
- **Decision:** `GET /v1/me` returns the role. The router sends each role to its own shell. Therapist screens are unreachable for patients and the reverse. Logout clears all role state.
- **Consequences:** Two navigation trees behind one login. Tests cover both routes and the redirect guard.

#### F-ADR-9: Android hardening baseline
- **Date:** 2026-10-23
- **Status:** Proposed
- **Context:** The spec's safeguarding (spec 13) assumes a device can be seen by someone else.
- **Decision:** `android:allowBackup="false"`. Data extraction rules exclude every app file. `FLAG_SECURE` on patient and therapist screens. Keystore keys non-exportable. Cleartext traffic disabled. Network security config pins nothing for MVP (see FD-decisions in Phase 10).
- **Consequences:** Users cannot restore app data from Google backup. This is intended. Matches the spec's "no silent backup" rule.

#### F-ADR-10: Build toolchain
- **Date:** 2026-10-23
- **Status:** Accepted (verified on 2026-10-22 against official sources; re-verify at install)
- **Context:** Flutter 3.38 and later target 16 KB page size alignment. Flutter 3.47 defaults to `compileSdk` 36.
- **Decision:** Flutter 3.47 stable. minSdk 24, compileSdk 36, targetSdk 36. Android Gradle Plugin 9.1.0, Gradle 9.3.1, Kotlin 2.4.0, Java 17 minimum. NDK r28 pinned. Local machine has Java 21, which satisfies the minimum.
- **Consequences:** Build must use the pinned NDK. The release APK is checked for 16 KB alignment in CI.

---

## Technology Stack

| Layer | Choice | Justification |
|---|---|---|
| Language | Dart (app); Kotlin (Android glue only) | Flutter's language. Kotlin only where Flutter has no API (`FLAG_SECURE`, `finishAndRemoveTask`) |
| Framework | Flutter 3.47 stable, pinned | Spec 16. Mature Android support. 16 KB alignment from 3.38 |
| Navigation | `go_router` (F-ADR-6, PROPOSED) | Declarative redirects for role and onboarding guards |
| State | `flutter_riverpod` (F-ADR-6, PROPOSED) | Testable provider overrides |
| API client | Generated from `openapi.yaml` (FD-1, PROPOSED) | Contract-first (backend ADR-2) |
| Local database | `drift` with SQLCipher (F-ADR-7, PROPOSED) | Encrypted SQLite with migrations |
| Secure storage | `flutter_secure_storage` (Android Keystore) | Tokens and the database key |
| Biometric lock | `local_auth` | Spec 13. The OS biometric prompt |
| Push | `firebase_messaging` | Spec 16 (FCM). Receives neutral payloads only |
| Local notifications | `flutter_local_notifications` | Channel control. Secret visibility for crisis and reminder channels |
| Vector graphics | `flutter_svg` | The creature and glyphs are SVG (design doc 13.1: "needs no redrawing") |
| Fonts | Onest, Fraunces, Noto Sans Bengali, bundled | Design doc section 3. Bengali has no fallback in the others |
| Dialer | `url_launcher` with `tel:` | Crisis numbers. The device dialer is always the final fallback (spec 10.5) |
| Testing | `flutter_test`, `integration_test`, golden tests for components (PROPOSED) | Template rule: test real behaviour |
| CI/CD | GitHub Actions with `subosito/flutter-action` pinned to 3.47 and Java 17 | Repo already on GitHub |
| Observability | Local redacted logs only (FD-7) | No analytics, no third-party crash reporting in MVP |

**Packages not used:** the fluid shader, any analytics SDK, any advertising SDK, any Google Play services dependency beyond FCM.

---

## Dependency Management

- **Package manager:** `pub`. `pubspec.lock` committed.
- **Rule for adding a dependency:** a PR line stating what it does, why it is needed, what it replaces, and its licence. Two reviewers for anything touching storage, crypto, notifications or the lock screen.
- **Security audit cadence:** dependency review on every PR. Manual review of the Android dependency tree before every release.
- **Known constraints:**
  - Flutter 3.47 stable only.
  - No GPL dependencies.
  - No analytics, advertising or tracking SDK.
  - Android API 24 minimum.
  - 16 KB page size alignment required on the release APK.

---

## Configuration & Environment

- Non-secret values come from `--dart-define` at build time. Never from a `.env` file shipped in the app.
- The app has no secrets. Anything secret stays on the server.
- `lib/config/env.dart` reads the defines and fails fast in debug if a required one is missing.

| Variable | Required | Default | Description |
|---|---|---|---|
| `API_BASE_URL` | Yes | none | Base URL of the backend for the environment |
| `APP_ENV` | Yes | `dev` | `dev`, `staging`, `prod` |
| `APP_VERSION` | Yes | from `pubspec.yaml` | Shown in Settings and sent in the device registration |
| `UPDATE_MANIFEST_URL` | No | none | FD-8. Static version file. Unset disables the check |
| `RESOURCES_VERIFIED_AT` | Bundled | none | The verification date of the bundled crisis resources (also in the backend, cross-checked in tests) |

---

## Project-Type Guidance

**Phases skipped for this project:** Phase 6 (real-time) is skipped in MVP. The app uses FCM and fetch-on-open. Phase 9 uses device storage as described in Phase 7. Phase 4 (therapist role) is included because the therapist role is in this binary.

---

## Folder Structure

```
apps/mobile/
├── lib/
│   ├── main.dart
│   ├── app/
│   │   ├── bootstrap.dart               # dependency setup, error zone
│   │   ├── router.dart                  # go_router with role and onboarding guards
│   │   └── theme.dart                   # built from tokens.g.dart only
│   ├── config/
│   │   └── env.dart                     # dart-define reader, fail-fast
│   ├── core/
│   │   ├── logging.dart                 # redacted logger, release-stripped
│   │   ├── result.dart                  # Success / Failure types for repositories
│   │   ├── clock.dart                   # device clock and skew measurement (FD-5)
│   │   └── errors.dart                  # map envelope codes to user copy keys
│   ├── design/
│   │   ├── tokens.g.dart                # GENERATED. Do not edit
│   │   ├── widgets/                     # glass pill, hairline, primary and outline buttons, step tabs, expand tile, chip, icon button
│   │   ├── companion/                   # creature: SVG plus state machine (rest, calm, low, joyful)
│   │   └── type.dart                    # sp scale per size class (F-ADR-5)
│   ├── l10n/
│   │   ├── app_en.arb
│   │   └── app_bn.arb
│   ├── data/
│   │   ├── api/                         # GENERATED client from openapi.yaml, plus thin wrappers
│   │   ├── local/                       # drift database, migrations, encrypted queue
│   │   ├── secure/                      # Keystore-backed keys and tokens
│   │   └── repositories/                # one per domain area, returns Result
│   ├── features/
│   │   ├── opening/                     # "I need help right now" vs "I'm okay, just exploring"
│   │   ├── onboarding/                  # eight screens
│   │   ├── home/                        # Today's Focus, check-in, weekly snapshot
│   │   ├── tasks/                       # task detail, why this task, swap, feedback
│   │   ├── journal/                     # Recovery and Personal journals
│   │   ├── safety/                      # crisis screen, grounding, safety plan, fast exit (Gate 1)
│   │   ├── lock/                        # biometric lock
│   │   ├── notifications/               # FCM receipt, channels, neutral copy
│   │   ├── settings/                    # privacy setting, access log, export, delete, pause
│   │   ├── auth/                        # signup, login, session
│   │   └── therapist/                   # role shell
│   │       ├── onboarding/              # licence, body, country, DSA, crisis acknowledgement
│   │       ├── invites/                 # accept, identity confirmation (patient side in patient shell)
│   │       ├── patients/                # grouped list and patient detail
│   │       ├── alerts/                  # alert view, checklist, 60-second undo (Gate 1)
│   │       └── settings/
│   └── sync/                            # offline queue worker and retry schedule
├── android/
│   └── app/
│       ├── build.gradle.kts             # minSdk 24, compileSdk 36, targetSdk 36
│       ├── src/main/AndroidManifest.xml # allowBackup=false, no cleartext
│       ├── src/main/res/xml/data_extraction_rules.xml
│       └── src/main/kotlin/.../MainActivity.kt   # FLAG_SECURE channel, fast exit channel
├── assets/
│   ├── fonts/                           # Onest, Fraunces, Noto Sans Bengali
│   ├── creature/                        # SVG
│   └── crisis/
│       └── resources.json               # bundled numbers with lastVerifiedAt
├── test/                                # unit and widget tests
├── integration_test/                    # device flows, including Gate 1 client scenarios
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

Generated code lives in `design/tokens.g.dart` and `data/api/`. Both are committed. CI fails if regenerating changes them.

---

## Phase Checklist

- [x] Phase 0: Requirements & Architecture
- [x] Phase 1: Repository Scaffold & Project Skeleton
- [x] Phase 2: Core Domain / Data Model (client models and local entities)
- [ ] Phase 3: Primary Interface (patient screens)
- [ ] Phase 4: Secondary Interface (therapist role)
- [ ] Phase 5: Client Logic Layer (offline queue, copy rules, presentation)
- [ ] Phase 6: Real-Time Layer *(skipped in MVP)*
- [ ] Phase 7: Device Storage (encrypted local data)
- [ ] Phase 8: Platform Integrations (FCM, biometrics, dialer, Keystore)
- [ ] Phase 9: Validation, Error Handling & Observability
- [ ] Phase 10: Security & Safeguarding
- [ ] Phase 11: Testing (including client side of Gate 1)
- [ ] Phase 12: Performance Optimization
- [ ] Phase 13: CI/CD & Code Quality
- [ ] Phase 14: Documentation
- [ ] Phase 15: Release (APK on GitHub)
- [ ] Phase 16: Refactoring & Cleanup

### Checkpoints (what the frontend can build, and when)

| Stage | Can start when | Work |
|---|---|---|
| Stage A | Restructure is on `main` | Phases 1, design tokens, design widgets, bundled crisis screen and grounding, encrypted storage, biometric lock, `FLAG_SECURE`, fast exit. All of these run without the server |
| Stage B | CP0 (contract frozen on `main`) | Generated client, mocked repositories, onboarding and home screens against fixtures |
| Stage C | CP1 | Real auth, consent, surveys, safety plan, onboarding on real data |
| Stage D | CP2 | Crisis integration, offline sync, alert copy, Gate 1 client tests S4, S5, S8, S15, S16 |
| Stage E | CP3 | Therapist role end to end, including invites and alerts |
| Stage F | CP4 | Home, tasks, journals, check-ins on real data |
| Stage G | CP5 | Release candidate, APK |

Stage A is the answer to "what can the frontend do while backend works": almost the whole safety core, and all the design system.

Each stage is delivered as pull requests into `main` through the `app/frontend` branch. Rebase onto `main` before each pull request.

---

## Phase 0 – Requirements & Architecture

### Goals

- Agree the screen inventory, the copy rules, and the native translation of the design.
- Close FD-1 to FD-10 and record the ADRs.

### Tasks

1. Write the plain-language description (see Project Overview).
2. Functional requirements from spec sections 6, 7, 12 and 13, with IDs (for example `REQ-APP-SAFETY-02`).
3. Non-functional requirements:
   - Crisis screen and grounding tools open in under one second, offline, with no login (spec 12.2).
   - Crisis numbers reachable in two taps from anywhere in the app (spec 6.3).
   - Touch targets at least 44 by 44 dp. Text scales to 200%.
   - Cold start to grounding screen under two seconds on a mid-range device.
   - Animations hold 60 fps on the target device (Phase 12).
4. Out of scope: see the Out of Scope section.
5. Architecture diagram in `apps/mobile/docs/architecture.md`: client layers, the offline queue, and what happens when the server is unreachable.
6. Record F-ADR-1 to F-ADR-10 and close FD-1 to FD-10.
7. Copy rules (see Phase 5) reviewed against spec 6.7, 11.5, 12.3.
8. Screen inventory agreed (see Phase 3).

### Acceptance Criteria

- [x] FD-1 to FD-10 each have a recorded answer. *(2026-10-26: all accepted as proposed; `docs/decisions-fd.md`)*
- [x] F-ADR-4 and F-ADR-5 are Accepted before any token or type work starts. *(2026-10-26)*
- [x] Every screen in Phase 3 has a named owner, a state list, and a copy key list. *(owner for all frontend screens: Person B; inventories in plan Phase 3/4; requirements re-checked against spec in `apps/mobile/docs/requirements.md`)*
- [x] Both people can answer "what does the app do?" in one sentence. *(plan Project Overview paragraph)*

### AI Agent Guidance

> Read this phase fully before creating a file. If a screen or string is not in the inventory, stop and add it here first. Do not invent screens.
>
> **Verification rule:** After every file you create or modify, run the relevant test or analysis for that file, then the full test suite. Report both results before touching the next file.

---

## Phase 1 – Repository Scaffold & Project Skeleton

### Goals

- A bootable Android Flutter app with the folder structure above.
- The toolchain works on this machine.
- The design tokens are generated into Dart.

### Tasks

1. Install Flutter 3.47 stable. Confirm `flutter --version` reports 3.47.
2. Install the Android SDK platform `android-36`, build tools `36.0.0`, and NDK r28 with `sdkmanager`. Accept licences.
3. Create the project: `flutter create --platforms=android --org com.between apps/mobile`. *(Recorded 2026-10-26 by owner: keep the existing `com.between.between` application ID — it is created, built, and matches the plan's `com.between` org intent with the app-name suffix Flutter adds.)*
4. Set `minSdk 24`, `compileSdk 36`, `targetSdk 36`, NDK r28 in `android/app/build.gradle.kts`. Set AGP 9.1.0, Gradle 9.3.1, Kotlin 2.4.0 in the Gradle files.
5. `lib/config/env.dart`: read the `dart-define` values, fail fast in debug if `API_BASE_URL` or `APP_ENV` is missing.
6. `lib/core/logging.dart`: a logger with levels and a redaction filter. Stripped from release builds. Test that a log call containing `journalText` emits `[REDACTED]`.
7. Smoke route: the root route renders the design's background colour and a headline from the ARB file. No business logic.
8. Generate `lib/design/tokens.g.dart` from `packages/design-tokens/tokens.json` using Style Dictionary with a custom Dart format (F-ADR-4). Commit the output. Add a unit test that every token in the JSON has a Dart constant.
9. Add `flutter analyze` and `dart format --set-exit-if-changed` to the scaffold. Zero warnings.
10. Create `assets/crisis/resources.json` with placeholder entries marked `unverified`. Real numbers come from Phase 3 content review, not from this phase.

### Acceptance Criteria

- [x] `flutter --version` reports 3.47 stable. *(3.47.7)*
- [x] `flutter build apk --debug` completes. *(built, then booted on emulator)*
- [x] `flutter run` boots on an emulator at API 36 and shows the smoke route. *(AVD `between_api36`, screenshot recorded in session)*
- [x] A missing `API_BASE_URL` in debug stops startup with a clear message. *(assert in `main()` + `test/config/env_test.dart`)*
- [x] The redaction test passes. *(+14 others; suite green)*
- [x] Every token in `tokens.json` has a generated Dart constant, and the generated file matches a fresh regeneration. *(idempotence verified twice)*
- [x] `flutter analyze` reports zero issues.

### Common Pitfalls

- Installing the whole Flutter desktop toolchain now. Android only.
- Hand-editing `tokens.g.dart`.
- Forgetting the pinned NDK. The 16 KB check then fails late.

---

## Phase 2 – Core Domain / Data Model (client)

### Goals

- Typed client models for every contract shape, and local entities for offline data.
- Models that cannot represent an invalid state the contract forbids.

### Tasks

1. Generate the API client from `openapi.yaml` (FD-1). Commit the output. Never edit it by hand. Wrap it in repositories that return `Result`.
2. Client enums mirror the contract exactly: `AlertState`, `CrisisTier`, `ConsentItem`, `ConnectionState`, `JournalKind`, `JournalPrivacy`, `VerificationStatus`, and the error code registry.
3. Local entities (drift tables, encrypted per F-ADR-7):
   - `SafetyPlanCache`: last synced version, read-only offline. Field 4 included, because the patient owns it. Never sent to therapists.
   - `TodayTaskCache`: today's task, `fetchedAt`, shown with "loaded earlier" when offline.
   - `CheckInQueue`, `JournalQueue`, `CrisisQueue`: each row has `clientId` (UUID), payload, `clientCreatedAt`, `attempts`, `nextAttemptAt`, `status`.
   - `MoodHistoryCache`: 30 days, read-only.
   - `EmergencyContacts`: the patient's own contacts, plus the therapist's number when connected (read-only, spec 7.1).
4. Not stored on the device: therapist patient data (FD-9). Therapist screens hold patient data in memory only.
5. Factories or constructors for each local entity. No nullable field where the contract says required.
6. Fixtures for tests: normal state, empty state, error state, and each edge case. Synthetic only.

### Acceptance Criteria

- [x] Generated client compiles against the frozen contract.
- [x] A local queue row cannot be created without `clientId` and `clientCreatedAt`.
- [x] The therapist patient data is not in any table (a test asserts the schema).
- [x] Every enum value in the client matches the contract (a test compares them).

### Common Pitfalls

- Re-declaring an enum that the contract already defines, then letting the two drift.
- Storing therapist data "temporarily" in a cache table.

---

## Phase 3 – Primary Interface (patient screens)

### Goals

- Every patient screen in the spec, built in order of safety importance.
- Every screen with loading, error, empty and offline states.

### Interface Type

**Option D: UI / Frontend.** Component tree and routing are defined below. Every page has the four states before any data logic is added.

### Screen Inventory

| Screen | Route | Spec | States | Copy keys (examples) | Stage |
|---|---|---|---|---|---|
| Opening question | `/open` | 6.1 | default | `open.help_now`, `open.exploring` | A |
| Crisis screen | `/crisis` | 11, 12.3 | default, offline, error (numbers always shown) | `crisis.title`, `crisis.call_kaan`, `crisis.call_999`, `crisis.cannot_reach_care_team` | A |
| Grounding (5-4-3-2-1, box breathing, diaphragmatic, body scan, PMR, safe place) | `/grounding/:id` | 12.1 | default, completed | `grounding.*` | A |
| Safety plan (view and edit) | `/safety-plan` | 7 | empty, draft, active, complete, offline (read-only) | `safety.field1` to `safety.field5` | A |
| Biometric lock | overlay | 13 | locked, failed | `lock.prompt`, `lock.use_passcode` | A |
| Fast exit | button, always visible | 13 | default | `exit.label` | A |
| Welcome | `/onboarding/welcome` | 6.1 screen 1 | default | `welcome.body` | C |
| Account | `/onboarding/account` | 6.1 screen 2 | default, under-18 hard stop, error | `account.age_18`, `account.under18` | C |
| Consent | `/onboarding/consent` | 6.1 screen 3 | default, required item snapped on | `consent.*` | C |
| Restriction warning | `/onboarding/restriction` | 6.1 screen 4 | default | `restriction.*` | C |
| Survey | `/onboarding/survey` | 6.1 screen 5 | per question, saved progress, self-harm overlay | `survey.*` | C |
| Warm results | `/onboarding/results` | 6.1 screen 6 | loading, results, provisional | `results.provisional` | C |
| Preferences | `/onboarding/prefs` | 6.1 screen 7 | default, none selected | `prefs.*` | C |
| Therapist connection prompt | `/onboarding/therapist` | 6.1 screen 8 | default, skip confirmation | `therapist.prompt`, `therapist.later` | C |
| Home | `/home` | 6.3 | loading, empty (no task: grounding shown), offline, error | `home.focus`, `home.checkin` | F |
| Check-in | sheet on Home | 5.2 | default, submitted, queued offline | `checkin.*` | F |
| Task detail | `/task/:id` | 6.4 | default, completed, too hard | `task.start`, `task.why`, `task.too_hard` | F |
| Swap | sheet | 6.4 | reason pick, alternative, no alternative | `swap.*` | F |
| Did this help | sheet | 18 | default | `help.yes`, `help.no` | F |
| Recovery Journal | `/journal/recovery` | 6.6 | locked (Level 2+ for new entries), empty, editing | `journal.recovery.*` | F |
| Personal Journal | `/journal/personal` | 6.6 | empty, editing | `journal.personal.*` | F |
| Journal privacy setting | sheet | 6.6 | shown before writing | `privacy.point_of_choice` | F |
| Settings | `/settings` | 14, 17 | default | `settings.*` | F |
| Privacy and access log | `/settings/privacy` | 14.5, 14.7 | loading, empty log, list | `access.*` | F |
| Export | `/settings/export` | 14.5 | requested, ready (24 h), expired | `export.*` | F |
| Delete account | `/settings/delete` | 14.6 | two-step, summary, confirmed | `delete.*` | F |
| Pause data processing | `/settings/pause` | 14.5 | default, paused | `pause.*` | F |
| 30-day mood | `/history/mood` | 17 | loading, data, empty | `history.*` | F |
| Task history | `/history/tasks` | 17 | loading, data, empty | `history.tasks.*` | F |
| Therapist invite (patient side) | `/connection` | 8.1 | pending, awaiting confirmation, confirmed, declined, wrong-person flag | `connection.*` | E |

Stage A screens do not depend on the server. Stage C onward depend on the contract checkpoint shown.

### Tasks

1. Design system widgets first (`lib/design/widgets/`), built only from tokens:
   - Primary pill (white), outline pill, icon button (44 dp), text link with accent underline, chip, glass surface.
   - Hairline rules and the full-width band.
   - Step tabs with `tablist` semantics and horizontal swipe or arrow focus.
   - Expandable tile with `expanded` semantics.
   - Focus indication without animation.
2. The creature (`lib/design/companion/`):
   - SVG from `assets/creature/`, drawn with `flutter_svg`.
   - States: `rest`, `calm`, `low`, `joyful`, matching design doc section 7.2.
   - Behaviours translated for touch:
     - Blink: every 2.6 to 5.4 seconds.
     - Gaze: replaced by a subtle idle sway, because there is no pointer.
     - Press: tap squashes, bounces, and a leaf floats away.
     - Nap: after 12 seconds of no interaction, body flattens and a "z" floats up. Wakes on any touch or scroll.
     - Wave: first time the scroll position passes 40 dp.
   - Reduced motion (`MediaQuery.disableAnimations`): expressions still change, nothing moves.
   - It is a named button (`Semantics`), 44 dp touch target.
3. Crisis screen (Gate 1, Stage A). Built and tested before any server work:
   - Opens with no network, no login, and no server call.
   - Shows the Kaan Pete Roi number as tap-to-call, 999 as tap-to-call, the device dialer as fallback.
   - Shows the safety plan (last synced) and the grounding tools.
   - Shows the "last verified" date and hours for every number from `resources.json`.
   - Copy: "Here is a number you can call right now." Never "we have notified someone" unless the server says so.
4. Grounding tools open under one second, with no spinners and no placeholders.
5. Opening question, onboarding, home, tasks, journals, settings, and history, in that order, after the stages above.
6. Every screen implements the four states (loading, error, empty, offline) before data logic.

### Acceptance Criteria

- [ ] Every screen in the inventory has a route, a widget test, and the states listed.
- [ ] The crisis screen opens in airplane mode with a logged-out, expired token state (integration test on device).
- [ ] Grounding opens in under one second on the target device (measured).
- [ ] No stage name or stage label appears anywhere in patient UI (grep and test).
- [ ] Every interactive target is at least 44 by 44 dp (accessibility test).
- [ ] Text at 200% system scale does not clip or overlap on the crisis screen and home (golden or manual test, recorded).
- [ ] The creature respects reduced motion (test with `disableAnimations` true).
- [ ] The "10-second test" is run with one person outside the team. The answer "start today's task" is recorded in `docs/usability.md`.

### Common Pitfalls

- Making the crisis screen look like the rest of the app. It is the least decorative screen and the only one with saturated peach call buttons (design doc 11).
- Hard-coding English copy in a widget.
- Waiting for the API before building the crisis screen.

### AI Agent Guidance

> Build screens from the inventory, not from memory of the web design. If a screen needs a state not listed, add the state here first.

---

## Phase 4 – Secondary Interface (therapist role)

### Goals

- A native therapist experience on a phone, in the same binary.
- Every therapist action that can affect a crisis is protected by the rules in Phase 10.

### Scope (MVP)

The therapist role shows only what the backend plan's CP3 delivers:
- Onboarding: licence number, professional body, country, Data Sharing Agreement, crisis responsibilities acknowledgement, emergency-contact statement.
- Invites: accept, then wait for patient confirmation.
- Patient list, grouped.
- Patient detail: read-only.
- Crisis alert view, checklist, and 60-second undo.
- Read-only AI summary.

Deferred to post-MVP and **not built**: stage approval controls, message drafts and the messaging thread, task suggestion review, the full dashboard.

### Screen Inventory (therapist)

| Screen | Route | Spec | States |
|---|---|---|---|
| Therapist welcome and what the platform is not | `/t/welcome` | 9.5.1 | default |
| Account and licence | `/t/onboarding/account` | 9.5.2 | default, validation errors, pending verification |
| Data Sharing Agreement | `/t/onboarding/dsa` | 9.5.3 | default, must scroll to end before accept |
| Crisis responsibilities | `/t/onboarding/crisis` | 9.5.4 | default, checkbox required |
| How the AI works | `/t/onboarding/ai` | 9.5.5 | default |
| Emergency-contact statement | `/t/onboarding/contact` | 8.4 | default, required |
| Pending verification | `/t/pending` | 8.2 | waiting, verified, suspended |
| Invite acceptance | `/t/invites/accept` | 8.1 | default, pending patient confirmation |
| Patient list | `/t/patients` | 9.2 | loading, empty, grouped list, offline (last known shows nothing; see Phase 7) |
| Patient detail | `/t/patients/:id` | 9.3 | loading, data, access-denied (404 shown as "not available") |
| Alert view | `/t/alerts/:id` | 11.5 | loading, open, reviewed (undo available 60 s), resolved, reauth-required, closed |
| Alert checklist | sheet on alert view | B01 | three items, submit disabled until all three |
| AI summary | section in patient detail | 9.4 | loading, available, not generated yet |
| Therapist settings | `/t/settings` | 9.5, 9.6 | default. Crisis notifications shown as "always on" and locked |

### Tasks

1. Role shell: separate bottom navigation and home for therapists (F-ADR-8).
2. Onboarding flow as the table above. Each acknowledgement is a separate, recorded action on the server.
3. Invite acceptance: the therapist sees the patient's first name only. Nothing else is shown until the patient confirms (backend CP3).
4. Patient list: display groups in the order from the server response. Never re-sort on the client. Show "No recent activity" as its own section with neutral copy. Never label it low priority.
5. Patient detail: show the full survey results (therapists see full results, spec 4.1). Show the safety plan only if shared; show field 4 as "Personal, not shared" (spec 7.3). The journal view follows the patient's privacy setting, as the server returns it.
6. Crisis alert view (Gate 1):
   - Elapsed time, from the server's `elapsedSeconds`. Never computed on the device.
   - Trigger shown as the trigger type only, not reproduced content.
   - Recent mood from the server.
   - Quick actions: view profile, mark reviewed.
   - Checklist: "I spoke with the patient", "Patient confirmed they are currently safe", "Follow-up plan is in place". Resolve is disabled until all three are ticked.
   - "Mark reviewed" starts a 60-second countdown shown in a snackbar. Undo calls the server. If the server returns `UNDO_WINDOW_CLOSED`, show "Too late to undo" and refresh the state. Never assume the undo worked until the server confirms.
   - Notice on the view: "This does not replace clinical judgment."
   - If the session is older than 4 hours, show the re-authentication screen before the alert content loads (`REAUTH_REQUIRED`).
7. Therapists cannot disconnect themselves. There is no disconnect control on the therapist side.
8. AI summary: visually distinct "AI draft" label, permanent note: "AI drafts are suggestions only. You know your patient. Review carefully before sending." (Summaries are read-only in MVP, so the note is on the summary itself.)

### Acceptance Criteria

- [ ] A patient cannot navigate to any `/t/` route, and a therapist cannot navigate to patient-only routes (router tests).
- [ ] Invite acceptance shows no patient data before confirmation (integration test, backend S18).
- [ ] Resolve is disabled with fewer than three checklist items (widget test, backend S7).
- [ ] The undo countdown matches the server's window. A closed window shows "Too late to undo" (integration test, backend S5 and S6).
- [ ] An alert opened after 4 hours shows re-auth before content (integration test, backend S16).
- [ ] Field 4 never appears on therapist screens (widget test with a shared-plan fixture).
- [ ] Patient list group order is the server's order (test).
- [ ] Therapist screens set `FLAG_SECURE` (Android test).

### Common Pitfalls

- Re-sorting the patient list on the client, which quietly changes priority.
- Showing a countdown the server does not share, so the UI and server disagree.
- Adding a disconnect button to the therapist side.

---

## Phase 5 – Client Logic Layer

### Goals

- Keep the logic that belongs on the device: offline queue, retry schedule, copy selection, and presentation.
- Keep every clinical and safety decision off the device.

### What belongs here

1. **Offline queue** (`lib/sync/`):
   - Items are sent in order of `clientCreatedAt`.
   - Retry schedule after a failed sync: 2 minutes, 10 minutes, then 30 minutes (spec 12.2). Then keep the 30-minute interval.
   - Each item is sent with its `clientId`. A response of `duplicate: true` is treated as success.
   - An item is removed from the queue only after the server confirms it is `accepted`, `duplicate`, or `historical_flagged`. A `rejected` item stays visible and is reported.
   - The queue is safe to replay after a crash.
2. **Copy selection**: a map from server state to copy key. Example:

| Server alert state | Patient copy key | Therapist copy key |
|---|---|---|
| `detected`, `dispatched` | `alert.patient.connecting` | `alert.therapist.dispatching` |
| `delivered` | `alert.patient.therapist_notified` | `alert.therapist.delivered` |
| `acknowledged`, `patient_contacted` | `alert.patient.therapist_reviewing` | `alert.therapist.in_progress` |
| `escalated_external` flag set | `alert.patient.escalated_external` (spec 11.3, Issue 06) | `alert.therapist.escalated` |
| `resolved`, `closed` | `alert.patient.resolved` | `alert.therapist.closed` |

   Patient copy never says "notified" or "someone is coming" unless the state is `delivered` or later (Global Rule 6).
3. **Offline notice** logic: detect no connection, show "You're offline right now. Your safety plan and crisis resources are still available below." Never block grounding access (spec 12.2).
4. **Unreachable care team** (spec 12.3): when the crisis flow cannot reach the server, show "The app can't reach your care team right now. These numbers connect you directly to support." Never explain the technical reason. Never say anyone was notified.
5. **Skew warning**: if the device clock differs from the server's `serverTime` by more than 5 minutes, record the skew in the queue item (FD-5). Do not change the displayed time.
6. **Reminder display**: the server decides when reminders fire. The app shows the Friday reflection and the weekly summary when the server says they are available.

### What does NOT belong here

- Alert states or escalation timing.
- Restriction levels or what is locked (the server returns the copy key and the level).
- Stage, stage changes, or stage approval.
- Task selection or the one-swap-per-day limit (the server enforces it; the app shows the result).
- Tier classification of anything the user writes.
- Patient grouping.

### Tasks

1. Implement the queue worker with the schedule above, tested with a fake clock.
2. Implement the copy map as a single file with one test per row.
3. Implement the offline notice and the unreachable-care-team copy.
4. Implement the skew recording.

### Acceptance Criteria

- [ ] Queue replay after a forced crash sends no duplicate to the server (integration test, backend S9).
- [ ] A `rejected` item is never silently dropped.
- [ ] The retry schedule matches 2, 10, 30 minutes (fake clock test).
- [ ] No patient copy key contains "notified" unless the mapped state is `delivered` or later (test over the whole map).
- [ ] No file under `lib/` computes an alert state, a timer, a restriction level, or a stage (a grep test and a code review checklist item).

### Common Pitfalls

- Letting the queue mark an item "sent" before the server confirms.
- Showing "therapist notified" on tap, before the server confirms `delivered`.

---

## Phase 6 – Real-Time Layer *(skipped in MVP)*

The app uses FCM push and fetch-on-open in MVP. If the backend adds a WebSocket gateway later (backend plan, Phase 6), the client will need:
- Reconnect with exponential backoff, capped at a maximum retry count.
- A short-lived ticket on connect, never the refresh token.
- Drop events for patients the therapist has no connection to.

Not built in MVP. Marked `[PLANNED]`.

---

## Phase 7 – Device Storage (encrypted local data)

### Goals

- Keep the safety core working offline, and keep everything on the device encrypted.

### Tasks

1. **Database:** `drift` with SQLCipher (F-ADR-7). Key generated once from a secure random source, stored in the Android Keystore via `flutter_secure_storage`. Never logged, never in a file, never in a backup.
2. **Tokens:** access and refresh tokens in `flutter_secure_storage` only.
3. **What is stored** (patient only):
   - Safety plan, last synced, read-only offline.
   - Today's task, with `fetchedAt`.
   - Emergency contacts, including the connected therapist's number when connected.
   - Unsynced check-ins, journal entries, and crisis events, in their queues.
   - 30 days of mood, read-only.
4. **What is not stored:**
   - Any therapist patient data (FD-9).
   - Journal text after sync. The server copy is canonical, and the local copy is removed once the server confirms (keep only the unsynced ones).
   - Analytics or logs with content.
5. **Bundled, not stored:** crisis resources and grounding content, shipped in `assets/`. Available with no database and no login.
6. **Migrations:** versioned. Never edit an applied migration. Test upgrade from every previous version.
7. **Logout:** clears the database, the tokens, and any role state. Bundled content remains.
8. **Backup:** `allowBackup=false` and data extraction rules exclude the whole app (F-ADR-9). Test that the rules are present in the release manifest.

### Acceptance Criteria

- [ ] The database file is unreadable without the Keystore key (test by opening it with the wrong key and asserting failure).
- [ ] Killing the app mid-write leaves the queue consistent (test).
- [ ] Logout leaves no patient data on the device (integration test that inspects the app data directory).
- [ ] The release manifest has `allowBackup="false"` and the extraction rules exclude app data (build check).
- [ ] The crisis resources open with the database deleted (test).

### Common Pitfalls

- Storing the database key in plain preferences.
- Assuming the server copy always exists for a journal entry that is still in the queue.

---

## Phase 8 – Platform Integrations

### Goals

- Each platform capability is an isolated adapter, with a fallback when it fails.

### Integrations

| Integration | Purpose | Failure behaviour |
|---|---|---|
| FCM | Receive neutral notifications and alert pushes. Register device token | Token refresh re-registers. Failure: fetch on open |
| `flutter_local_notifications` | Show notifications on the correct channel | Failure: the server still has the state. Show it on next open |
| `local_auth` | Biometric lock | Not available on the device: fall back to device passcode if the OS allows. Never leave the app unlockable without any check |
| `url_launcher` (`tel:`) | Crisis numbers | Failure: show the number as text to copy (never hidden) |
| Android Keystore (via `flutter_secure_storage`) | Keys and tokens | Failure: app requires sign-in again. Never falls back to plain storage |
| Platform channel (Kotlin) | `FLAG_SECURE`, fast exit (`finishAndRemoveTask`) | Failure: log a redacted warning. The screen still works, but this is reported as a test failure in CI |

### Notification channels (Android)

| Channel | Importance | Lock-screen visibility | Used for |
|---|---|---|---|
| `crisis` | High | `VISIBILITY_SECRET` (the user cannot change this) | Alerts, crisis resource nudges |
| `care_reminders` | Default | `VISIBILITY_PRIVATE` with a neutral public version | Daily check-in and task reminders |
| `connection` | Default | `VISIBILITY_PRIVATE` with a neutral public version | Therapist connection status |

Public version text is always neutral, for example "Between: you have a message". No mental health content on the lock screen (spec 13). The notification audit (spec 13) is a test that checks every title and body string against a list of forbidden words.

### Tasks

1. Adapter per integration in `lib/core/platform/` or `lib/data/platform/`.
2. Each adapter has a fake for tests.
3. Notification channel setup at first launch. Channels are created once, with the visibility above.
4. The biometric lock adapter enforces FD-6. The crisis screen and fast exit are never behind the lock.

### Acceptance Criteria

- [ ] Each integration has a passing fake-based test and a device test.
- [ ] The crisis channel's visibility is `SECRET` (Android test).
- [ ] Every notification string passes the forbidden-word audit.
- [ ] The crisis screen and fast exit are reachable from the lock overlay (integration test).

---

## Phase 9 – Validation, Error Handling & Observability

### Goals

- No error reaches the user as a stack trace, and no error leaks content.
- The team can diagnose problems without reading patient content.

### Tasks

1. **Form validation:**
   - Age: "I am 18 or older" must be ticked. Under-18 leads to a hard-stop screen with age-appropriate resources and no account created (spec 6.1, OD-3).
   - Email and password: standard checks. Password reset handled by the server.
   - Licence number, country, body: required on therapist onboarding.
2. **Error mapping:** each error code from the envelope maps to a copy key. Unknown codes map to a generic "Something went wrong. Try again." Never show the raw code.
3. **Timeouts:** every request has a timeout. Crisis requests use a short timeout, after which the app shows the offline crisis copy and the numbers, not a spinner.
4. **Global error zone:** `runZonedGuarded` and `FlutterError.onError` catch everything, log it redacted, and show the error screen with a retry and the crisis numbers.
5. **Local logs:** redacted, levels from the environment, stripped from release (FD-7).
6. **Crash reporting:** none in MVP (FD-7).
7. **Diagnostics for testers:** an optional "Send a diagnostic report" button that sends app version, device model, OS version and the last error code only, with the user's consent. No content.

### Acceptance Criteria

- [ ] No screen shows a stack trace or a raw error code (widget test on the error mapper).
- [ ] A forced exception on the home screen shows the error screen with the crisis numbers.
- [ ] A crisis request that times out shows the offline crisis copy within the timeout.
- [ ] The diagnostic report contains no content field (schema test).

---

## Phase 10 – Security & Safeguarding

### Goals

- Protect against a stolen phone, a controlling relative looking over a shoulder, a shared device, and a lost session.

### Tasks

1. **`FLAG_SECURE`** on every screen that shows patient or therapist data, and on the crisis screen. Set through the Kotlin platform channel. CI has a test that fails if a screen with patient data is missing it.
2. **Biometric lock** (FD-6): locks after the app is backgrounded for 30 seconds. Also locks on cold start if the user enabled it. The crisis screen and fast exit are never behind the lock.
3. **Fast exit:** one tap, always visible on patient screens. Behaviour per FD-4:
   - Clears the task from recents (`finishAndRemoveTask`).
   - The next launch opens to the neutral screen if the "neutral home" setting is on.
   - Setting is in Settings, with a clear explanation.
   - Never requires authentication to use.
4. **Discreet notifications** per Phase 8.
5. **Session handling:**
   - Access token refreshed silently. Refresh rotation handled by the server (backend ADR-7).
   - If the server reports reuse, sign out and show "Please sign in again."
   - Therapist re-authentication (`REAUTH_REQUIRED`) shown before alert content.
6. **Transport:** HTTPS only. `cleartextTrafficPermitted="false"`. Default platform trust. Certificate pinning is not in MVP (F-ADR-9); revisit before a public release.
7. **No secrets in the APK:** verified by a build check that greps the release bundle for key patterns.
8. **Backup and data extraction rules** from F-ADR-9 and Phase 7.
9. **Root and tampering detection:** not in MVP. Recorded as a known limitation in the README.
10. **Permissions:** request only `INTERNET`, `POST_NOTIFICATIONS` (Android 13+), and biometric permission. No location, contacts, camera or microphone.

### Acceptance Criteria

- [ ] Every patient and therapist screen sets `FLAG_SECURE` (CI test).
- [ ] Backgrounding for 31 seconds locks the app. Backgrounding for 29 seconds does not (test with fake clock).
- [ ] The crisis screen is reachable from the lock overlay (integration test).
- [ ] The release manifest requests only the permissions listed above (build check).
- [ ] `cleartextTrafficPermitted` is false in the release build (build check).
- [ ] No API key or secret is found in the release APK (scan).
- [ ] Fast exit clears the task from recents on a test device (device test).

### Common Pitfalls

- Locking the crisis screen behind biometrics.
- Enabling Android auto-backup "for convenience".
- Logging a token during a refresh failure.

---

## Phase 11 – Testing

### Goals

- Prove each screen, each safety flow, and each device capability works, on a real device as well as in tests.

### Tasks

1. **Unit tests:** repositories, queue worker, copy map, error mapper, validators, token and type generation.
2. **Widget tests:** every screen in the inventory, in every state listed.
3. **Golden tests** (PROPOSED): design system widgets and the creature in each state, at 1x and 2x font scale. Goldens are reviewed, not auto-accepted.
4. **Integration tests** (`integration_test/`): against a staging backend and against a fake server:
   - Crisis flow end to end.
   - Offline crisis with the network off.
   - Queue replay.
   - Therapist invite and alert flow.
5. **Gate 1 client tests:** the frontend's share of the backend's shared scenario suite:

| Scenario | Client assertion |
|---|---|
| S1 | Crisis screen shown at once; numbers visible; patient copy stays "connecting" until `delivered` |
| S3 | Tier 2 "No" leads to resources only; no detail sent |
| S4 | Therapist alert view shows elapsed time from the server |
| S5 | Undo countdown; undo calls the server; state refreshes after undo |
| S6 | "Too late to undo" when the server says the window closed |
| S7 | Resolve disabled with two of three ticks |
| S8 | Journal save shows saved; no degraded-monitoring message to the patient |
| S13 | Therapist sees the monitoring-state notice without content |
| S15 | Withdrawal shows a permanent-record note only where the copy says so |
| S16 | Re-auth shown before the alert content |
| S18 | Invite shows first name only until patient confirms |
| S19 | Declined invite leaves no patient data visible to the therapist |
| S22 | Crisis resources open with an expired token |

6. **Accessibility tests:** labels on every interactive element, 44 dp targets, 200% font scale without clipping on crisis and home.
7. **Device tests:** one emulator at API 36 and one real mid-range Android device. Test the crisis flow, fast exit, lock, and `FLAG_SECURE` on the real device.
8. **The 10-second test:** a person outside the team, asked "What does this app want you to do right now?" The answer "start today's task" is recorded.
9. **Coverage:** threshold enforced in CI. PROPOSED 80% on `lib/features/safety/`, `lib/sync/`, and `lib/features/therapist/alerts/`.

### Acceptance Criteria

- [ ] `flutter test` and `flutter test integration_test` pass on a clean checkout.
- [ ] Every screen in the inventory has a widget test for each state listed.
- [ ] The Gate 1 client assertions above all pass against staging.
- [ ] The crisis screen works in airplane mode with the expired-token state (device test).
- [ ] The 10-second test result is recorded.
- [ ] No test calls a real paid service.

### Common Pitfalls

- Goldens accepted without looking.
- Passing widget tests while the device behaves differently (always run the device tests before a release).
- Testing only the success path of the undo.

---

## Phase 12 – Performance Optimization

### Goals

- Measured performance on the target device. Nothing optimised without a measurement.

### Target device

Define once, record in `docs/performance.md`: a mid-range Android phone with at least 4 GB RAM and Android 12 or later. Test on this device and on the oldest supported API 24 emulator for regressions.

### Targets

| Metric | Target | Measured with |
|---|---|---|
| Cold start to grounding screen (offline) | under 1 second | Android startup trace |
| Cold start to home (online, signed in) | under 2 seconds | Android startup trace |
| Frame rate during the creature and motion | 60 fps, no sustained jank | Flutter DevTools frame timings |
| Battery during a 10-minute session with the creature | no more than the baseline app | Battery historian |
| Release APK size | under 25 MB (PROPOSED) | Build output |
| 16 KB page alignment | Pass | `zipalign -P 16` check in CI |

### Rules

1. Capture a baseline before any change.
2. The creature pauses its animation when the screen is not visible or the app is backgrounded.
3. Animations use `transform` and `opacity` only (design doc section 5). Never animate layout.
4. Lists over 50 items are lazy (`ListView.builder`).
5. Images and SVG are cached and precompiled where possible.

### Acceptance Criteria

- [ ] Every target above is measured on the target device and recorded.
- [ ] The creature stops animating when backgrounded (test).
- [ ] No optimisation breaks a test.

---

## Phase 13 – CI/CD & Code Quality

### Tasks

1. GitHub Actions workflow `.github/workflows/app.yml`, path-filtered to `apps/mobile/**`, `packages/design-tokens/**`:
   - On pull request:
     - [ ] Install Java 17 and Flutter 3.47 (`subosito/flutter-action`, pinned)
     - [ ] `flutter pub get`
     - [ ] `dart format --set-exit-if-changed`
     - [ ] `flutter analyze` (zero issues)
     - [ ] Regenerate tokens and API client, and fail if `git diff --exit-code` shows changes
     - [ ] `flutter test`
     - [ ] Build debug APK
     - [ ] Secret scan on the built bundle
     - [ ] Permission and manifest checks (Phase 10)
     - [ ] `FLAG_SECURE` coverage check (Phase 10)
   - On merge to `main`: all of the above, plus:
     - [ ] Build the signed release APK (signing material in GitHub encrypted secrets, never in the repo)
     - [ ] 16 KB alignment check
     - [ ] SHA-256 checksum file
     - [ ] Upload to a draft GitHub Release (publishing is manual, see Phase 15)
     - [ ] Integration tests against staging, when staging exists
2. Branch protection on `main` (shared with backend).
3. `CODEOWNERS` lines for safety-critical paths (listed in backend plan, Phase 13).
4. Pre-commit: format and analyze.

### Acceptance Criteria

- [ ] CI fails on analyze warnings, format changes, failed tests, a stale generated file, or a missing `FLAG_SECURE`.
- [ ] A fresh clone runs `flutter pub get && flutter test` with all tests passing.

---

## Phase 14 – Documentation

### Tasks

1. `apps/mobile/README.md`: prerequisites (Flutter 3.47, Java 17, Android SDK 36, NDK r28), setup, `dart-define` values, how to run, how to test, how to build the release APK.
2. `apps/mobile/docs/architecture.md`: layers, offline queue, role shells.
3. `apps/mobile/docs/screens.md`: the screen inventory with states.
4. `apps/mobile/docs/offline.md`: what works offline and what does not (matches spec 12.1).
5. `apps/mobile/docs/release.md`: signing, checksums, install steps, the unknown-sources warning, and what users lose without auto-update.
6. `apps/mobile/docs/copy.md`: the copy rules from Phase 5 and the forbidden-word list.
7. `apps/mobile/docs/usability.md`: the 10-second test result and accessibility checks.
8. `apps/mobile/CHANGELOG.md` in Keep a Changelog format.
9. Mark every planned feature `[PLANNED]`.

### Acceptance Criteria

- [ ] A developer with no context builds and runs the app from the README alone.
- [ ] Every screen in the inventory is listed in `screens.md` with its states.
- [ ] No document describes a planned feature as built.

---

## Phase 15 – Release (APK on GitHub)

### Goals

- Ship a signed APK that users can install, verify, and trust.

### Tasks

1. **Signing key:** generated once, stored in a password manager and an offline backup. Never in the repo. Its loss means existing installs cannot be updated. Record where it is stored, not the key itself.
2. **Version:** `pubspec.yaml` version and `versionCode` increase on every release. Tag `android-v[MAJOR].[MINOR].[PATCH]`.
3. **Build:** the release APK from CI (Phase 13).
4. **Checksum:** SHA-256 file published next to the APK.
5. **GitHub Release:** draft created by CI, reviewed by Person A and Person B, then published. Release notes list what changed, and mark anything `[PLANNED]` as not shipped.
6. **Landing page:** the download band updated to link the APK, show the install steps, and state the unknown-sources warning. Track no downloads (spec constraint). Changed in `apps/landing/`.
7. **Install guide** on the landing page: how to allow installs from the browser, how to verify the checksum, and what happens on update.
8. **Update notice** (FD-8): optional, off by default, if implemented.
9. **Rollback:** the previous APK stays published. Data is on the device, so a rollback can break a migrated database. The release process must not ship a schema change without a migration test from the previous version.
10. **Device data across updates:** tested. Upgrade from the previous release keeps the safety plan, queues and settings.

### Release Checklist

- [ ] All tests pass on the release commit.
- [ ] Release APK is signed with the project key. The key is not in the repo.
- [ ] Checksum published and verified by a second person.
- [ ] 16 KB alignment check passes.
- [ ] `allowBackup` is false and no secret is in the APK.
- [ ] Upgrade from the previous version keeps local data (device test).
- [ ] Crisis flow passes Gate 1 client tests against staging.
- [ ] Landing page download link points to the new release.
- [ ] Install instructions and the unknown-sources warning are present.
- [ ] CHANGELOG is updated. Tag pushed.
- [ ] No `[PLANNED]` feature is presented as shipped.

### Common Pitfalls

- Losing the signing key.
- A migration that works on a fresh install and fails on upgrade.
- Publishing the release before the checksum is attached.

---

## Phase 16 – Refactoring & Cleanup

### Tasks

1. Resolve every `TODO`, `FIXME`, `HACK` or `temporary` comment, or track it.
2. Check that no clinical logic crept into `lib/` (the grep test from Phase 5 runs here too).
3. Remove dead code, unused packages, and unused assets (including any leftover shader code).
4. Re-run all tests after every step.
5. Verify every checkpoint's acceptance criteria still hold.

### Acceptance Criteria

- [ ] No unresolved `TODO` or `FIXME`, or each is tracked.
- [ ] All tests pass.
- [ ] No unused package in `pubspec.yaml`.
- [ ] No shader or GL code in the repository.

---

## Future Work

| Item | Priority | Notes |
|---|---|---|
| iOS | High | Second platform (spec 2, B10). Requires push and biometrics checks on iOS |
| Windows, macOS, Linux | Medium | Desktop plugin support checked per platform first. Therapist on laptop is a major use case |
| Google Play distribution | Medium | Requires closed testing and target API rules at that time. Re-verify then |
| Automatic updates | Medium | Revisit FD-8 |
| Therapist messaging | High | Post-MVP (spec 6.8) |
| Stage approval UI | Medium | Post-MVP (spec 9.3) |
| Encrypted backup (opt-in) | Medium | Spec 14.8, N12 |
| Certificate pinning | Medium | Before public release (F-ADR-9) |
| Root and tamper detection | Low | Known limitation in MVP |
| Full therapist dashboard | Medium | Gated by the evidence gate (spec 18) |
| Shader on the app | Low | Out of scope (F-ADR-3). Revisit only if design changes |

---

## Out of Scope (This Version)

- The fluid shader or any GL/Vulkan/AGSL rendering (F-ADR-3).
- iOS, Windows, macOS, Linux builds (B10). Code stays portable but is not built, tested, or released.
- Google Play distribution.
- Messaging with therapists.
- Stage approval, message drafts, task suggestion review, full therapist dashboard.
- Any analytics, advertising, or third-party tracking SDK.
- Any peer or community feature.
- Any AI-generated content shown directly to patients.
- Therapist signup in the app outside an invite (spec 2).
- Under-18 accounts (spec 2).
- Encrypted cloud backup.
- Severe-severity user flow (launch is mild to moderate).

---

*This plan is intentionally granular so a coding agent can work through each stage without ambiguity. Complete each phase fully, verify its acceptance criteria, and do not proceed until they pass. The app renders decisions; it does not make them.*

*Last updated: 2026-10-23 by Person B (frontend)*
