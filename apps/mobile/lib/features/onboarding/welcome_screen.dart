import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../l10n/app_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Reveal(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Text(
                  l10n.welcomeBody,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Spacer(),
                PrimaryPill(
                  label: l10n.welcomeContinue,
                  onPressed: () => context.go('/onboarding/account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
