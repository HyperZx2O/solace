import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:solace/features/crisis/crisis_screen.dart';
import 'package:solace/features/grounding/grounding_screen.dart';
import 'package:solace/features/safety_plan/safety_plan_screen.dart';
import 'package:solace/features/home/home_screen.dart';
import 'package:solace/features/onboarding/welcome_screen.dart';
import 'package:solace/features/onboarding/account_screen.dart';
import 'package:solace/features/onboarding/onboarding_screens.dart';
import 'package:solace/features/lock/biometric_lock.dart';
import 'package:solace/features/therapist/therapist_screens.dart';
import 'package:solace/l10n/app_localizations.dart';

Widget _wrap(Widget child) => ProviderScope(
      child: MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        home: child,
      ),
    );

void main() {
  final screens = <String, Widget>{
    'crisis': const CrisisScreen(),
    'grounding': const GroundingScreen(id: 'box'),
    'safety': const SafetyPlanScreen(),
    'safety_ro': const SafetyPlanScreen(readOnly: true),
    'home': const HomeScreen(),
    'welcome': const WelcomeScreen(),
    'account': const AccountScreen(),
    'consent': const ConsentScreen(),
    'restriction': const RestrictionScreen(),
    'survey': const SurveyScreen(),
    'results': const ResultsScreen(),
    'prefs': const PrefsScreen(),
    'therapist_prompt': const TherapistPromptScreen(),
    'lock': BiometricLockOverlay(
      onUnlock: () async => true,
      onUsePasscode: () {},
    ),
    't_welcome': const TherapistWelcomeScreen(),
    't_account': const TherapistAccountScreen(),
    't_dsa': const TherapistDsaScreen(),
    't_crisis': const TherapistCrisisRespScreen(),
    't_pending': const TherapistPendingScreen(),
    't_invite': const TherapistInviteAcceptScreen(),
    't_patients': const TherapistPatientListScreen(),
    't_patient': const TherapistPatientDetailScreen(id: '1'),
    't_alert': const TherapistAlertScreen(id: '1'),
    't_settings': const TherapistSettingsScreen(),
    'reauth': const ReauthScreen(),
  };

  for (final entry in screens.entries) {
    testWidgets('renders without crash: ${entry.key}', (tester) async {
      await tester.pumpWidget(_wrap(entry.value));
      await tester.pump();
      expect(tester.takeException(), isNull);
    });
  }
}
