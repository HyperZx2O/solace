# Solace — Native Audit (Flutter / Android)

Audit of `apps/mobile` against Impeccable native audit dimensions. Code-level, no fixes applied.

## Audit Health Score

| # | Dimension | Score | Key Finding |
|---|-----------|-------|-------------|
| 1 | Accessibility | 2 | Only 5 `Semantics` labels for ~11 interactive elements; no explicit text-scaling guard |
| 2 | Performance | 3 | No unvirtualized long lists; startup does env/DB/session init before first frame |
| 3 | Appearance & Theming | 3 | Tokens used throughout; dark-only, no light variant |
| 4 | Platform Conformance | 3 | Material 3 + SafeArea throughout; no predictive-back handling |
| 5 | Adaptivity | 2 | SafeArea on most screens; no landscape/tablet/foldable handling |
| **Total** | | **13/20** | **Acceptable — significant work needed** |

## Platform Conformance Verdict
**Pass (mostly native).** Reads as a Flutter/Material app, not a web port: Material 3, Scaffold, AppBar, SafeArea, PageTransitionsTheme (FadeUpwards), NoSplash, divider/snackbar themes from tokens. No HTML-style buttons or hover affordances. Minor: no predictive-back gesture handling (Android 13+), no edge-to-edge inset configuration beyond SafeArea.

## Executive Summary
- Score: 13/20 (Acceptable).
- Issues: 0 P0, 4 P1, 6 P2, 4 P3.
- Top issues: missing semantic labels, no text-scaling guard, notification channels never created, no landscape/tablet adaptivity.
- Next: `$impeccable harden` (a11y + i18n + edge cases), then `$impeccable adapt` (responsive), then `$impeccable polish`.

## Detailed Findings

### P1 — Major

**P1. Missing semantic labels on interactive elements**
- Location: `lib/features/*` screens (home, crisis, onboarding, therapist, journals, settings).
- Category: Accessibility.
- Impact: TalkBack users can't identify buttons/links; only 5 `Semantics` wrappers for ~11 interactive elements (ElevatedButton×2, TextButton×4, IconButton×2, GestureDetector×1, InkWell×2). Design widgets (buttons, chips_tabs, fast_exit) are labeled; screens are not.
- Guideline: WCAG 4.1.2 (Name, Role, Value); Material a11y.
- Recommendation: Add `Semantics(label: ..., button: true)` to every interactive element, especially crisis button, fast exit, check-in, task start.
- Suggested: `$impeccable harden`.

**P1. Notification channels never created at runtime**
- Location: `lib/core/platform/notification_adapter.dart` (`createChannels` defined but never called); `notification_channels.dart`.
- Category: Conformance / Safeguarding.
- Impact: Channels rely on implicit creation on first `show`, with default importance; crisis channel's `VISIBILITY_SECRET` per-notification visibility is set, but channel-level behavior (sound, badge) may not match spec.
- Guideline: Android notification channels must be created before posting; discreet notifications (spec 13.2).
- Recommendation: Call `createChannels()` during bootstrap (main.dart or a provider init), before any notification.
- Suggested: `$impeccable harden`.

**P1. No explicit text-scaling guard**
- Location: all screens using fixed `SizedBox` heights / `Padding` with `gutter` (37 SafeArea usages, fixed 44dp touch targets).
- Category: Accessibility.
- Impact: At 200% text scale, fixed heights and single-line text may clip/overlap (NFR-APP-03). Flutter scales text by default but layout doesn't reflow.
- Guideline: WCAG 1.4.4 (Resize Text); NFR-APP-03.
- Recommendation: Use `Flexible`/`Wrap` for text rows, avoid fixed heights on text containers, test at 200% scale.
- Suggested: `$impeccable adapt`.

**P1. No landscape / tablet / foldable adaptivity**
- Location: all screens (no `MediaQuery.orientation`, no size-class branching, no `LayoutBuilder` for wide screens).
- Category: Adaptivity.
- Impact: Phone layout stretched on tablets; landscape may clip; foldable hinge ignored (NFR-APP-05, spec 12).
- Guideline: Material window size classes; adaptive layouts.
- Recommendation: Add `LayoutBuilder`/`MediaQuery` size-class branching for tablet (≥600dp) and landscape; test on foldable posture.
- Suggested: `$impeccable adapt`.

### P2 — Minor

**P2. Only 5 Semantics labels for interactive elements** (see P1, lower severity for non-critical controls).

**P2. `Colors.black54` in companion creature**
- Location: `lib/design/companion/companion.dart:139`.
- Category: Theming.
- Impact: Raw color outside token block (DESIGN.md rule: every colour through a token).
- Recommendation: Add a `companion_scrim` token and use it.
- Suggested: `$impeccable colorize` / `$impeccable typeset`.

**P2. `Colors.transparent` in theme**
- Location: `lib/app/theme.dart:32` (`surfaceTintColor: Colors.transparent`).
- Category: Theming.
- Impact: Minor; acceptable for disabling surface tint, but should be a token for consistency.
- Suggested: `$impeccable colorize`.

**P2. Unvirtualized `ListView` (6 usages)**
- Location: `lib/features/onboarding/onboarding_screens.dart:31`, `safety_plan:39`, `therapist:54,176,209,316`.
- Category: Performance.
- Impact: Content is short (scroll gate, lists), so no jank now; becomes a problem if lists grow. DSA scroll gate uses 1200px fixed content — fine.
- Recommendation: Convert patient/therapist lists to `ListView.builder` when real data arrives.
- Suggested: `$impeccable optimize`.

**P2. Dark-only theme (no light variant)**
- Location: `lib/app/theme.dart` (`ColorScheme.dark` only).
- Category: Theming / Adaptivity.
- Impact: No light mode; NFR doesn't require it, but some users prefer light. Design system is dark-first.
- Recommendation: Keep dark-only (design decision) or add a light variant via tokens. Document the decision.
- Suggested: `$impeccable colorize`.

**P2. `createChannels()` never invoked**
- (See P1 notification finding — downgraded here if channels auto-create acceptably.)

### P3 — Polish

**P3. `dart:io` unused import**
- Location: `test/fake_server.dart:1`.
- Suggested: `$impeccable polish`.

**P3. Companion `_squashed` field unused**
- Location: `lib/design/companion/companion.dart:35`.
- Suggested: `$impeccable polish`.

**P3. Unnecessary `package:flutter/widgets.dart` import**
- Location: `lib/design/companion/companion.dart:4`.
- Suggested: `$impeccable polish`.

**P3. Unused token import in open_screen**
- (none after cleanup)

## Patterns & Systemic Issues
- Semantic labels are concentrated in design widgets (`buttons.dart`, `chips_tabs.dart`, `fast_exit.dart`) but absent on screen-level interactive elements — a systemic a11y gap.
- Text scaling is not explicitly handled anywhere; relies on Flutter defaults, risking clip at 200%.
- No adaptive layout logic (no `LayoutBuilder`/size-class branching) anywhere — the app is phone-portrait only.

## Positive Findings
- Material 3 with token-derived `ColorScheme`; no hard-coded hex in screen code (only `Colors.transparent` in theme and `Colors.black54` in companion).
- `SafeArea` on 37 of 39 scaffolds — good inset handling.
- `FLAG_SECURE` set globally in `main.dart` and on therapist screens via `_SecureShell`.
- Biometric lock with passcode fallback; fast exit on 6 screens.
- Reduce Motion honored in companion creature.
- Discreet notification visibility (`secret`/`private`) set per notification.
- Offline floor (`/open`, crisis, grounding) reachable with no session/DB/network.
- `allowBackup=false`, data-extraction rules exclude all app data, cleartext disabled.
- Crisis numbers bundled from assets, tap-to-call, never placeholder.
- 6 `TextEditingController`s all disposed (9 `dispose` overrides).
- No `Image.network` (no remote image loading jank); creature is SVG.

## Recommended Actions (priority order)

1. **[P1] `$impeccable harden`**: Add semantic labels to all interactive elements; invoke `createChannels()` at bootstrap; guard text scaling at 200%.
2. **[P1] `$impeccable adapt`**: Add landscape/tablet/foldable adaptivity (size-class branching).
3. **[P2] `$impeccable colorize`**: Replace `Colors.black54` and `Colors.transparent` with tokens; decide on light variant.
4. **[P2] `$impeccable optimize`**: Convert lists to `ListView.builder` when real data arrives.
5. **[P3] `$impeccable polish`**: Remove unused imports/fields.

End with `$impeccable polish` as the final step.

Re-run `$impeccable audit` after fixes to see the score improve.
