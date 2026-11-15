# Solace — Screen Inventory

Every screen (with states) listed in the Phase 3/4 inventories.

## Patient screens

- `CrisisScreen` — connecting | delivered | error (network/offline)
- `GroundingScreen(id)` — technique selected | timer running | completed
- `SafetyPlanScreen()` — empty | draft | active | complete; readOnly flag
- `HomeScreen()` — loading (300ms) | default (empty/connected/offline) | alert-banner
- `AccountScreen()` — default
- `ConsentScreen()` — default
- `RestrictionScreen()` — default
- `SurveyScreen()` — default
- `ResultsScreen()` — default
- `PrefsScreen()` — default

## Therapist screens

- `TherapistWelcomeScreen()` — default
- `TherapistAccountScreen()` — default
- `TherapistDsaScreen()` — scroll-active (scroll gate) | completed
- `TherapistCrisisRespScreen()` — default
- `TherapistPendingScreen()` — pending
- `TherapistInviteAcceptScreen()` — first-name only (no data before confirmation)
- `TherapistPatientListScreen()` — server-ordered; empty message: "No recent activity"
- `TherapistPatientDetailScreen(id)` — survey results shown; field 4 → "Personal, not shared"
- `TherapistAlertScreen(id)` — elapsed from server; trigger type only; undo open/closed; recent mood; 3-item checklist; AI summary note; 60s undo; re-auth gate; FLAG_SECURE
- `TherapistSettingsScreen()` — default

## Auth / Lock / System

- `LoginScreen()` — form / error / loading
- `SignupScreen()` — form
- `ReauthScreen()` — form
- `BiometricLockOverlay()` — biometric prompt / passcode fallback / unlocked
- `ErrorScreen` — retry button + crisis numbers; no stack trace shown
