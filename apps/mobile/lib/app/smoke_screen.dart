import 'package:flutter/material.dart';

import '../config/env.dart';
import '../l10n/app_localizations.dart';
import '../design/tokens.g.dart';

/// Phase 1 smoke route: proves boot, theme and l10n only. No business logic.
/// Reused as the `/open` starting point in Phase 3.
class SmokeScreen extends StatelessWidget {
  const SmokeScreen({super.key, required this.env});

  final Env env;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.smokeTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                l10n.smokeSubtitle,
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(color: body_muted),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                '${env.appEnvironment}: ${l10n.smokeEnvLabel}',
                style: Theme.of(context).textTheme.labelSmall
                    ?.copyWith(color: body_muted),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
