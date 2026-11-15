import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../motion/motion.dart';
import '../tokens.g.dart';

/// Small label chip. Optionally tappable.
class ChipLabel extends StatelessWidget {
  const ChipLabel({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final chip = AnimatedContainer(
      duration: Motion.fast,
      curve: Motion.entrance,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? accent : glass_fill,
        border: Border.all(color: selected ? accent : hairline),
        borderRadius: BorderRadius.circular(999),
      ),
      child: AnimatedDefaultTextStyle(
        duration: Motion.fast,
        curve: Motion.entrance,
        style: TextStyle(
          color: selected ? action_inverse_fg : heading,
          fontSize: 13,
        ),
        child: Text(label),
      ),
    );

    if (onTap == null) return chip;
    return Semantics(
      button: true,
      selected: selected,
      label: label,
      excludeSemantics: true,
      child: TouchFeedback(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            HapticFeedback.selectionClick();
            onTap!();
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 44),
            child: Center(widthFactor: 1, heightFactor: 1, child: chip),
          ),
        ),
      ),
    );
  }
}

/// Step tabs with tablist semantics and arrow-key focus.
class StepTabs extends StatelessWidget {
  const StepTabs({
    super.key,
    required this.labels,
    required this.index,
    required this.onChanged,
  });

  final List<String> labels;
  final int index;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: 'Steps',
      child: Row(
        children: List.generate(labels.length, (i) {
          final selected = i == index;
          return Expanded(
            child: Semantics(
              selected: selected,
              button: true,
              label: labels[i],
              excludeSemantics: true,
              child: TouchFeedback(
                child: GestureDetector(
                  onTap: () {
                    HapticFeedback.selectionClick();
                    onChanged(i);
                  },
                  child: AnimatedContainer(
                    duration: Motion.fast,
                    curve: Motion.entrance,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selected ? accent : hairline,
                          width: selected ? 2 : 1,
                        ),
                      ),
                    ),
                    child: AnimatedDefaultTextStyle(
                      duration: Motion.fast,
                      curve: Motion.entrance,
                      style: TextStyle(
                        color: selected ? heading : body_muted,
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.w400,
                        fontSize: 14,
                      ),
                      child: Text(labels[i]),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

