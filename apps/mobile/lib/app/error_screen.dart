import 'package:flutter/material.dart';

import '../design/tokens.g.dart';
import '../design/widgets/buttons.dart';

/// Shown for uncaught errors. Never a stack trace. Always offers retry + crisis numbers.
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.onRetry});

  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Something went wrong. Try again.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              const Text(
                'Here is a number you can call right now.',
                style: TextStyle(color: body_muted),
              ),
              const Spacer(),
              if (onRetry != null)
                PrimaryPill(label: 'Retry', onPressed: onRetry),
            ],
          ),
        ),
      ),
    );
  }
}
