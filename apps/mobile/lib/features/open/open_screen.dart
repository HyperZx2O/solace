import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/session.dart';
import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../l10n/app_localizations.dart';

/// Offline-capable shell shown at `/open`. No session, no DB, no network needed.
class OpenScreen extends ConsumerWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      body: BotanicalBackdrop(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 28),
                Reveal(
                  child: Text(
                    l10n.appTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                Reveal(
                  delay: Motion.stagger,
                  child: const Text(
                    'You are offline right now. Your safety plan and crisis resources are still available below.',
                    style: TextStyle(color: body_muted),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                Reveal(
                  delay: Motion.stagger * 2,
                  child: PrimaryPill(
                    label: 'Continue to your space',
                    icon: Icons.arrow_forward,
                    onPressed: () {
                      ref.read(authSessionProvider).enterDemo();
                      context.go('/home');
                    },
                  ),
                ),
                const SizedBox(height: 12),
                Reveal(
                  delay: Motion.stagger * 3,
                  child: OutlinePill(
                    label: l10n.crisisNumbers,
                    icon: Icons.phone,
                    onPressed: () => context.go('/crisis'),
                  ),
                ),
                const SizedBox(height: 12),
                Reveal(
                  delay: Motion.stagger * 4,
                  child: OutlinePill(
                    label: l10n.groundingTitle,
                    icon: Icons.self_improvement,
                    onPressed: () => context.go('/grounding/box'),
                  ),
                ),
                Reveal(
                  delay: Motion.stagger * 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        button: true,
                        label: 'Log in',
                        child: TextButton(
                          onPressed: () => context.go('/login'),
                          child: const Text('Log in'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Semantics(
                        button: true,
                        label: 'Sign up',
                        child: TextButton(
                          onPressed: () => context.go('/signup'),
                          child: const Text('Sign up'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Preview build. Demo account already active',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: body_muted, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
