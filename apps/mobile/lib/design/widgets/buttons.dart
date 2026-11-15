import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../motion/motion.dart';
import '../tokens.g.dart';

/// Primary call-to-action pill. White on the dark stage; ≥44 dp target.
class PrimaryPill extends StatelessWidget {
  const PrimaryPill({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TouchFeedback(
      enabled: onPressed != null,
      child: ElevatedButton(
        onPressed: onPressed == null
            ? null
            : () {
                HapticFeedback.selectionClick();
                onPressed!();
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: on_media,
          foregroundColor: action_inverse_fg,
          disabledBackgroundColor: on_media.withValues(alpha: 0.08),
          disabledForegroundColor: body_muted.withValues(alpha: 0.75),
          elevation: 0,
          minimumSize: const Size(44, 44),
          padding: const EdgeInsets.symmetric(horizontal: gutter, vertical: 10),
          shape: const StadiumBorder(),
          textStyle: Theme.of(context).textTheme.labelLarge,
          animationDuration: Motion.fast,
          surfaceTintColor: Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 18),
              const SizedBox(width: 8),
            ],
            Flexible(child: Text(label)),
          ],
        ),
      ),
    );
  }
}

/// Outline pill, used for secondary actions.
class OutlinePill extends StatelessWidget {
  const OutlinePill({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TouchFeedback(
      enabled: onPressed != null,
      child: OutlinedButton(
        onPressed: onPressed == null
            ? null
            : () {
                HapticFeedback.selectionClick();
                onPressed!();
              },
        style: OutlinedButton.styleFrom(
          foregroundColor: heading,
          side: const BorderSide(color: hairline_strong),
          minimumSize: const Size(44, 44),
          padding: const EdgeInsets.symmetric(horizontal: gutter, vertical: 10),
          shape: const StadiumBorder(),
          animationDuration: Motion.fast,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 18),
              const SizedBox(width: 8),
            ],
            Flexible(child: Text(label)),
          ],
        ),
      ),
    );
  }
}

/// 44 dp icon target, no fill, accent on press.
class IconTap extends StatelessWidget {
  const IconTap({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: tooltip,
      excludeSemantics: true,
      child: TouchFeedback(
        enabled: onPressed != null,
        child: Material(
          type: MaterialType.transparency,
          child: SizedBox(
            width: 44,
            height: 44,
            child: IconButton(
              tooltip: tooltip,
              onPressed: onPressed,
              icon: Icon(icon, color: heading),
              splashRadius: 22,
            ),
          ),
        ),
      ),
    );
  }
}

/// Text link with an accent underline.
class AccentLink extends StatelessWidget {
  const AccentLink({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TouchFeedback(
      enabled: onPressed != null,
      scale: 0.99,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: accent,
          padding: EdgeInsets.zero,
          minimumSize: const Size(44, 44),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          animationDuration: Motion.fast,
        ),
        child: Text(
          label,
          style: const TextStyle(decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
