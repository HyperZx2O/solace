import 'package:flutter/material.dart';

import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../l10n/app_localizations.dart';

/// Full-screen biometric lock overlay. The caller supplies the auth attempt.
class BiometricLockOverlay extends StatelessWidget {
  const BiometricLockOverlay({
    super.key,
    required this.onUnlock,
    required this.onUsePasscode,
    this.message = 'Unlock to continue',
  });

  final Future<bool> Function() onUnlock;
  final VoidCallback onUsePasscode;
  final String message;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(gutter),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.lock_outline, color: heading, size: 48),
                const SizedBox(height: 16),
                Text(
                  l10n.lockTitle,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 24),
                PrimaryPill(
                  label: l10n.lockUnlock,
                  onPressed: () async {
                    final ok = await onUnlock();
                    if (!ok && context.mounted) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(l10n.lockFailed)));
                    }
                  },
                ),
                const SizedBox(height: 12),
                AccentLink(
                  label: l10n.lockUsePasscode,
                  onPressed: onUsePasscode,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
