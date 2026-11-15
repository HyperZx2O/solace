import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Solace'**
  String get appTitle;

  /// No description provided for @smokeTitle.
  ///
  /// In en, this message translates to:
  /// **'Solace'**
  String get smokeTitle;

  /// No description provided for @smokeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You can open this app even when things feel heavy.'**
  String get smokeSubtitle;

  /// Small footer label showing the active environment.
  ///
  /// In en, this message translates to:
  /// **'dev environment'**
  String get smokeEnvLabel;

  /// No description provided for @exitLabel.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exitLabel;

  /// No description provided for @crisisHeadline.
  ///
  /// In en, this message translates to:
  /// **'Here is a number you can call right now.'**
  String get crisisHeadline;

  /// No description provided for @crisisSafetyPlanTitle.
  ///
  /// In en, this message translates to:
  /// **'Your safety plan'**
  String get crisisSafetyPlanTitle;

  /// No description provided for @crisisSafetyPlanEmpty.
  ///
  /// In en, this message translates to:
  /// **'No safety plan saved yet. You can add one from Settings.'**
  String get crisisSafetyPlanEmpty;

  /// No description provided for @crisisGroundingTitle.
  ///
  /// In en, this message translates to:
  /// **'Grounding tools'**
  String get crisisGroundingTitle;

  /// No description provided for @crisisVerified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get crisisVerified;

  /// No description provided for @crisisNumbers.
  ///
  /// In en, this message translates to:
  /// **'Crisis numbers'**
  String get crisisNumbers;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Try again.'**
  String get errorGeneric;

  /// No description provided for @errorValidationFailed.
  ///
  /// In en, this message translates to:
  /// **'Please check your input.'**
  String get errorValidationFailed;

  /// No description provided for @errorUnauthenticated.
  ///
  /// In en, this message translates to:
  /// **'Please sign in again.'**
  String get errorUnauthenticated;

  /// No description provided for @errorForbidden.
  ///
  /// In en, this message translates to:
  /// **'You can\'t do that.'**
  String get errorForbidden;

  /// No description provided for @errorConsentRequired.
  ///
  /// In en, this message translates to:
  /// **'Consent required.'**
  String get errorConsentRequired;

  /// No description provided for @errorNotFound.
  ///
  /// In en, this message translates to:
  /// **'Not found.'**
  String get errorNotFound;

  /// No description provided for @errorConflict.
  ///
  /// In en, this message translates to:
  /// **'Conflict.'**
  String get errorConflict;

  /// No description provided for @errorAlertStateInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid alert state.'**
  String get errorAlertStateInvalid;

  /// No description provided for @errorUndoWindowClosed.
  ///
  /// In en, this message translates to:
  /// **'Too late to undo.'**
  String get errorUndoWindowClosed;

  /// No description provided for @errorRateLimited.
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Try again shortly.'**
  String get errorRateLimited;

  /// No description provided for @errorDependencyUnavailable.
  ///
  /// In en, this message translates to:
  /// **'A service is unavailable. Try again.'**
  String get errorDependencyUnavailable;

  /// No description provided for @errorInternal.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong on our side.'**
  String get errorInternal;

  /// No description provided for @groundingTitle.
  ///
  /// In en, this message translates to:
  /// **'Grounding'**
  String get groundingTitle;

  /// No description provided for @g54321.
  ///
  /// In en, this message translates to:
  /// **'5-4-3-2-1 senses'**
  String get g54321;

  /// No description provided for @gBox.
  ///
  /// In en, this message translates to:
  /// **'Box breathing'**
  String get gBox;

  /// No description provided for @gDiaph.
  ///
  /// In en, this message translates to:
  /// **'Diaphragmatic breathing'**
  String get gDiaph;

  /// No description provided for @gBody.
  ///
  /// In en, this message translates to:
  /// **'Body scan'**
  String get gBody;

  /// No description provided for @gPmr.
  ///
  /// In en, this message translates to:
  /// **'Progressive muscle relaxation'**
  String get gPmr;

  /// No description provided for @gSafe.
  ///
  /// In en, this message translates to:
  /// **'Safe place'**
  String get gSafe;

  /// No description provided for @groundingDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get groundingDone;

  /// No description provided for @welcomeBody.
  ///
  /// In en, this message translates to:
  /// **'Solace is a companion for the days between therapy appointments.'**
  String get welcomeBody;

  /// No description provided for @welcomeContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get welcomeContinue;

  /// No description provided for @accountAge18.
  ///
  /// In en, this message translates to:
  /// **'You must be 18 or older to use this app.'**
  String get accountAge18;

  /// No description provided for @accountUnder18.
  ///
  /// In en, this message translates to:
  /// **'This app is not available for under-18s.'**
  String get accountUnder18;

  /// No description provided for @accountContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get accountContinue;

  /// No description provided for @consentTitle.
  ///
  /// In en, this message translates to:
  /// **'Consent'**
  String get consentTitle;

  /// No description provided for @consentRequired.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get consentRequired;

  /// No description provided for @restrictionTitle.
  ///
  /// In en, this message translates to:
  /// **'Some features may be limited'**
  String get restrictionTitle;

  /// No description provided for @surveyTitle.
  ///
  /// In en, this message translates to:
  /// **'A few questions'**
  String get surveyTitle;

  /// No description provided for @surveyContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get surveyContinue;

  /// No description provided for @resultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Your results'**
  String get resultsTitle;

  /// No description provided for @resultsProvisional.
  ///
  /// In en, this message translates to:
  /// **'These results are provisional.'**
  String get resultsProvisional;

  /// No description provided for @prefsTitle.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get prefsTitle;

  /// No description provided for @prefsNoneSelected.
  ///
  /// In en, this message translates to:
  /// **'Choose at least one.'**
  String get prefsNoneSelected;

  /// No description provided for @therapistPromptTitle.
  ///
  /// In en, this message translates to:
  /// **'Connect a therapist?'**
  String get therapistPromptTitle;

  /// No description provided for @therapistPrompt.
  ///
  /// In en, this message translates to:
  /// **'A therapist can support you between sessions.'**
  String get therapistPrompt;

  /// No description provided for @therapistLater.
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get therapistLater;

  /// No description provided for @homeFocus.
  ///
  /// In en, this message translates to:
  /// **'Today\'s focus'**
  String get homeFocus;

  /// No description provided for @homeCheckin.
  ///
  /// In en, this message translates to:
  /// **'Check in'**
  String get homeCheckin;

  /// No description provided for @homeEmpty.
  ///
  /// In en, this message translates to:
  /// **'No task today. Try a grounding exercise.'**
  String get homeEmpty;

  /// No description provided for @taskStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get taskStart;

  /// No description provided for @taskDone.
  ///
  /// In en, this message translates to:
  /// **'I did it'**
  String get taskDone;

  /// No description provided for @taskWhy.
  ///
  /// In en, this message translates to:
  /// **'Why this task'**
  String get taskWhy;

  /// No description provided for @taskTooHard.
  ///
  /// In en, this message translates to:
  /// **'This is too hard'**
  String get taskTooHard;

  /// No description provided for @swapTitle.
  ///
  /// In en, this message translates to:
  /// **'Swap task'**
  String get swapTitle;

  /// No description provided for @swapReason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get swapReason;

  /// No description provided for @swapNoAlternative.
  ///
  /// In en, this message translates to:
  /// **'No alternative available'**
  String get swapNoAlternative;

  /// No description provided for @helpYes.
  ///
  /// In en, this message translates to:
  /// **'Yes, it helped'**
  String get helpYes;

  /// No description provided for @helpNo.
  ///
  /// In en, this message translates to:
  /// **'No, it did not'**
  String get helpNo;

  /// No description provided for @lockTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock to continue'**
  String get lockTitle;

  /// No description provided for @lockUnlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get lockUnlock;

  /// No description provided for @lockUsePasscode.
  ///
  /// In en, this message translates to:
  /// **'Use passcode'**
  String get lockUsePasscode;

  /// No description provided for @lockFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not unlock'**
  String get lockFailed;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['bn', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
