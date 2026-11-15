import 'package:go_router/go_router.dart';

import '../auth/auth_screens.dart';
import '../auth/session.dart';
import '../features/crisis/crisis_screen.dart';
import '../features/grounding/grounding_screen.dart';
import '../features/home/home_screen.dart';
import '../features/home/task_checkin_sheets.dart';
import '../features/journals/journals_screens.dart';
import '../features/onboarding/account_screen.dart';
import '../features/onboarding/onboarding_screens.dart';
import '../features/onboarding/welcome_screen.dart';
import '../features/safety_plan/safety_plan_screen.dart';
import '../features/therapist/therapist_screens.dart';
import '../features/lock/biometric_lock.dart';
import '../features/open/open_screen.dart';
import 'patient_shell.dart';

/// Patient-side router. Therapist routes (`/t/*`) are Phase 4 placeholders
/// that redirect to `/home` until the role shell lands.
GoRouter buildRouter(AuthSession session, {bool demoMode = true}) {
  return GoRouter(
    initialLocation: demoMode ? '/home' : '/open',
    redirect: (context, state) {
      final path = state.matchedLocation;
      if (session.expired &&
          path != '/login' &&
          path != '/signup' &&
          path != '/open') {
        return '/login';
      }
      final isTherapistRoute = path.startsWith('/t/');
      final isPatientRoute =
          !isTherapistRoute &&
          (path == '/home' ||
              path.startsWith('/journal') ||
              path.startsWith('/settings') ||
              path.startsWith('/history') ||
              path == '/connection' ||
              path.startsWith('/task') ||
              path == '/safety-plan');
      if (isTherapistRoute && session.role != AppRole.therapist) {
        return '/home';
      }
      if (isPatientRoute && session.role == AppRole.therapist) {
        return '/t/patients';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/open', builder: (_, _) => const OpenScreen()),
      GoRoute(path: '/crisis', builder: (_, _) => const CrisisScreen()),
      GoRoute(
        path: '/grounding/:id',
        builder: (_, s) =>
            GroundingScreen(id: s.pathParameters['id'] ?? '54321'),
      ),
      GoRoute(
        path: '/lock',
        builder: (_, _) => const BiometricLockOverlay(
          onUnlock: _noopUnlock,
          onUsePasscode: _noop,
        ),
      ),
      GoRoute(
        path: '/onboarding/welcome',
        builder: (_, _) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/onboarding/account',
        builder: (_, _) => const AccountScreen(),
      ),
      GoRoute(
        path: '/onboarding/consent',
        builder: (_, _) => const ConsentScreen(),
      ),
      GoRoute(
        path: '/onboarding/restriction',
        builder: (_, _) => const RestrictionScreen(),
      ),
      GoRoute(
        path: '/onboarding/survey',
        builder: (_, _) => const SurveyScreen(),
      ),
      GoRoute(
        path: '/onboarding/results',
        builder: (_, _) => const ResultsScreen(),
      ),
      GoRoute(
        path: '/onboarding/prefs',
        builder: (_, _) => const PrefsScreen(),
      ),
      GoRoute(
        path: '/onboarding/therapist',
        builder: (_, _) => const TherapistPromptScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => PatientShell(child: child),
        routes: [
          GoRoute(path: '/home', builder: (_, _) => const HomeScreen()),
          GoRoute(
            path: '/task/:id',
            builder: (_, s) => TaskDetailScreen(id: s.pathParameters['id'] ?? ''),
          ),
          GoRoute(
            path: '/journal/recovery',
            builder: (_, _) => const RecoveryJournalScreen(),
          ),
          GoRoute(
            path: '/journal/personal',
            builder: (_, _) => const PersonalJournalScreen(),
          ),
          GoRoute(path: '/settings', builder: (_, _) => const SettingsScreen()),
          GoRoute(
            path: '/settings/privacy',
            builder: (_, _) => const PrivacyScreen(),
          ),
          GoRoute(
            path: '/settings/export',
            builder: (_, _) => const ExportScreen(),
          ),
          GoRoute(
            path: '/settings/delete',
            builder: (_, _) => const DeleteAccountScreen(),
          ),
          GoRoute(
            path: '/settings/pause',
            builder: (_, _) => const PauseScreen(),
          ),
          GoRoute(
            path: '/history/mood',
            builder: (_, _) => const MoodHistoryScreen(),
          ),
          GoRoute(
            path: '/history/tasks',
            builder: (_, _) => const TaskHistoryScreen(),
          ),
          GoRoute(
            path: '/connection',
            builder: (_, _) => const ConnectionScreen(),
          ),
          GoRoute(
            path: '/safety-plan',
            builder: (_, _) => const SafetyPlanScreen(),
          ),
        ],
      ),
      // Therapist role (Phase 4).
      GoRoute(path: '/t/welcome', builder: (_, _) => const TherapistWelcomeScreen()),
      GoRoute(path: '/t/onboarding/account', builder: (_, _) => const TherapistAccountScreen()),
      GoRoute(path: '/t/onboarding/dsa', builder: (_, _) => const TherapistDsaScreen()),
      GoRoute(path: '/t/onboarding/crisis', builder: (_, _) => const TherapistCrisisRespScreen()),
      GoRoute(path: '/t/onboarding/ai', builder: (_, _) => const TherapistAiScreen()),
      GoRoute(path: '/t/onboarding/contact', builder: (_, _) => const TherapistContactScreen()),
      GoRoute(path: '/t/pending', builder: (_, _) => const TherapistPendingScreen()),
      GoRoute(path: '/t/invites/accept', builder: (_, _) => const TherapistInviteAcceptScreen()),
      GoRoute(path: '/t/patients', builder: (_, _) => const TherapistPatientListScreen()),
      GoRoute(
        path: '/t/patients/:id',
        builder: (_, s) =>
            TherapistPatientDetailScreen(id: s.pathParameters['id'] ?? ''),
      ),
      GoRoute(
        path: '/t/alerts/:id',
        builder: (_, s) =>
            TherapistAlertScreen(id: s.pathParameters['id'] ?? ''),
      ),
      GoRoute(path: '/t/settings', builder: (_, _) => const TherapistSettingsScreen()),
      GoRoute(path: '/reauth', builder: (_, _) => const ReauthScreen()),
      GoRoute(path: '/login', builder: (_, _) => const LoginScreen()),
      GoRoute(path: '/signup', builder: (_, _) => const SignupScreen()),
    ],
  );
}

Future<bool> _noopUnlock() async => true;
void _noop() {}
