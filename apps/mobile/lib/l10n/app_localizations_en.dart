// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Solace';

  @override
  String get smokeTitle => 'Solace';

  @override
  String get smokeSubtitle =>
      'You can open this app even when things feel heavy.';

  @override
  String get smokeEnvLabel => 'dev environment';

  @override
  String get exitLabel => 'Exit';

  @override
  String get crisisHeadline => 'Here is a number you can call right now.';

  @override
  String get crisisSafetyPlanTitle => 'Your safety plan';

  @override
  String get crisisSafetyPlanEmpty =>
      'No safety plan saved yet. You can add one from Settings.';

  @override
  String get crisisGroundingTitle => 'Grounding tools';

  @override
  String get crisisVerified => 'Verified';

  @override
  String get crisisNumbers => 'Crisis numbers';

  @override
  String get errorGeneric => 'Something went wrong. Try again.';

  @override
  String get errorValidationFailed => 'Please check your input.';

  @override
  String get errorUnauthenticated => 'Please sign in again.';

  @override
  String get errorForbidden => 'You can\'t do that.';

  @override
  String get errorConsentRequired => 'Consent required.';

  @override
  String get errorNotFound => 'Not found.';

  @override
  String get errorConflict => 'Conflict.';

  @override
  String get errorAlertStateInvalid => 'Invalid alert state.';

  @override
  String get errorUndoWindowClosed => 'Too late to undo.';

  @override
  String get errorRateLimited => 'Too many requests. Try again shortly.';

  @override
  String get errorDependencyUnavailable =>
      'A service is unavailable. Try again.';

  @override
  String get errorInternal => 'Something went wrong on our side.';

  @override
  String get groundingTitle => 'Grounding';

  @override
  String get g54321 => '5-4-3-2-1 senses';

  @override
  String get gBox => 'Box breathing';

  @override
  String get gDiaph => 'Diaphragmatic breathing';

  @override
  String get gBody => 'Body scan';

  @override
  String get gPmr => 'Progressive muscle relaxation';

  @override
  String get gSafe => 'Safe place';

  @override
  String get groundingDone => 'Done';

  @override
  String get welcomeBody =>
      'Solace is a companion for the days between therapy appointments.';

  @override
  String get welcomeContinue => 'Continue';

  @override
  String get accountAge18 => 'You must be 18 or older to use this app.';

  @override
  String get accountUnder18 => 'This app is not available for under-18s.';

  @override
  String get accountContinue => 'Continue';

  @override
  String get consentTitle => 'Consent';

  @override
  String get consentRequired => 'Required';

  @override
  String get restrictionTitle => 'Some features may be limited';

  @override
  String get surveyTitle => 'A few questions';

  @override
  String get surveyContinue => 'Continue';

  @override
  String get resultsTitle => 'Your results';

  @override
  String get resultsProvisional => 'These results are provisional.';

  @override
  String get prefsTitle => 'Preferences';

  @override
  String get prefsNoneSelected => 'Choose at least one.';

  @override
  String get therapistPromptTitle => 'Connect a therapist?';

  @override
  String get therapistPrompt => 'A therapist can support you between sessions.';

  @override
  String get therapistLater => 'Maybe later';

  @override
  String get homeFocus => 'Today\'s focus';

  @override
  String get homeCheckin => 'Check in';

  @override
  String get homeEmpty => 'No task today. Try a grounding exercise.';

  @override
  String get taskStart => 'Start';

  @override
  String get taskDone => 'I did it';

  @override
  String get taskWhy => 'Why this task';

  @override
  String get taskTooHard => 'This is too hard';

  @override
  String get swapTitle => 'Swap task';

  @override
  String get swapReason => 'Reason';

  @override
  String get swapNoAlternative => 'No alternative available';

  @override
  String get helpYes => 'Yes, it helped';

  @override
  String get helpNo => 'No, it did not';

  @override
  String get lockTitle => 'Unlock to continue';

  @override
  String get lockUnlock => 'Unlock';

  @override
  String get lockUsePasscode => 'Use passcode';

  @override
  String get lockFailed => 'Could not unlock';
}
