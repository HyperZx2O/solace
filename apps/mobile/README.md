# Solace — Android app (Flutter)

Trauma-recovery companion app. Patient + therapist roles, one binary. Android MVP — APK releases on GitHub Releases (Phase 15).

Read `docs/plan-frontend.md` (phases + ADRs), `docs/requirements.md`, `docs/architecture.md` and `docs/copy.md` before touching code. The spec is `docs/trauma-recovery-app-project-idea.md`; where it and any plan disagree, the spec wins until an Open Decision resolves it.

## Prerequisites

- **Flutter 3.47 stable** (pinned; machine verified: 3.47.7 at `C:\src\flutter`)
- **Java 17 minimum** (machine: Temurin 21)
- Android SDK **platform 36** + **build-tools 36.0.0**, **NDK 28.2.13676358**
- Gradle 9.3.1 / AGP 9.1.0 / Kotlin 2.4.0 (pinned in `android/`)
- minSdk 24 — targetSdk/compileSdk 36 (pinned in `android/app/build.gradle.kts`)

## Configuration (`--dart-define`)

No secrets belong in the app; these are non-secret values only (Global rule 4).

| Define | Required | Notes |
|---|---|---|
| `API_BASE_URL` | yes | Backend base URL. Debug builds fail fast without it |
| `DEMO_MODE` | no (default `true`) | Boots straight into a local demo patient. Set `false` for real auth |
| `APP_ENV` | no (default `dev`) | `dev` / `staging` / `prod` |
| `APP_VERSION` | no (default from pubspec) | Settings display + device registration |
| `UPDATE_MANIFEST_URL` | no | FD-8 update notice; unset disables the check |
| `RESOURCES_VERIFIED_AT` | no | Bundled crisis-resource verification date |

Example run:

```
flutter run \
  --dart-define=API_BASE_URL=https://staging.example.org \
  --dart-define=APP_ENV=staging
```

Missing `API_BASE_URL` in a debug build stops startup with a clear message by design.

## Demo preview

The app ships as a fully navigable placeholder — no backend calls, no invented metrics or testimonials. `DEMO_MODE` defaults to `true`, so a fresh install boots directly into the local demo patient space at `/home`; nothing patient-facing is behind an auth gate.

- Demo account: `demo@Solace.app` / `Solace` (accepted offline when demo mode is on).
- Settings has a reversible patient ↔ therapist switch, plus **Sign out of demo** which returns to the offline floor.
- Crisis numbers, grounding content and the companion creature are real assets, never placeholders.

Motion is part of the demo build: page transitions, staggered reveals, press/hover feedback, a botanical backdrop, a breathing orb and a living companion. All animation is transform/opacity only and falls back under reduced motion.

End-to-end smoke test (Maestro, Android):

```
cd apps/mobile
maestro test .maestro/smoke.yaml --device emulator-5554
```

The flow covers home, check-in sheet, grounding, task + help sheet, safety plan, all four shell tabs, and the demo role switch through therapist detail and alert.

## Build, run, test

```
flutter pub get
flutter gen-l10n            # after editing lib/l10n/*.arb (generate: true automates on build)
flutter analyze             # zero warnings is the gate
dart format --set-exit-if-changed .
flutter test
flutter build apk --debug   # 311s on this machine, last measured
```

Emulator for device checks: AVD `Solace_api36`.

## Design tokens

Source of truth: `packages/design-tokens/tokens.json` (DTCG, extracted from `apps/landing/app/flowstate.css :root`). Regenerate both outputs after any edit:

```
cd packages/design-tokens && npm install && npm run build
```

Output `dist/tokens.css` (landing) and `../../apps/mobile/lib/design/tokens.g.dart` (app). Both are committed; never hand-edit. CI fails if regeneration produces a diff (Phase 13). Coverage and naming are tested in `test/design/tokens_test.dart`.

## Release (Phase 15)

```bash
# Build signed release APK (requires SIGNING_KEY secret)
flutter assemble release --split-per-abi
# Checksums: sha256sum target/app-release-*.bin > release-checksums.txt
# Upload to GitHub Draft Release (manual)
```

- `allowBackup="false"`; `network_security_config.xml` locks cleartext.
- `scan-secrets.ps1` verifies built bundle.

## Phase checklist

See `docs/plan-frontend.md`. Phase 0–14 verified; Phase 15 (release) requires signing key.

## Known limitations (MVP)

- No root/tampering detection (recorded limitation; revisit before public release).
- No crash reporting (FD-7): local redacted logs only.
- Biometric lock falls back to device passcode when biometrics unavailable.


Work is phase-gated: see the Phase Checklist in `docs/plan-frontend.md`. Phases 0–14 are implemented; Phase 15 (signed release) is pending a signing key. A design/quality audit on 2026-11-12 found P0/P1 issues (crisis placeholder data, type system not wired, persistence claims) that must be fixed before release.
