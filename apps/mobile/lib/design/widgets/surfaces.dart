import 'package:flutter/material.dart';

import '../tokens.g.dart';

/// Frosted glass surface. Used sparingly (nav bars, sheets).
class GlassSurface extends StatelessWidget {
  const GlassSurface({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(gutter),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: glass_fill,
        border: Border.all(color: glass_border),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}

/// Full-width hairline.
class Hairline extends StatelessWidget {
  const Hairline({super.key, this.strong = false});

  final bool strong;

  @override
  Widget build(BuildContext context) {
    return Container(height: 1, color: strong ? hairline_strong : hairline);
  }
}

/// Full-width band used to separate sections.
class Band extends StatelessWidget {
  const Band({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: gutter, horizontal: gutter),
      decoration: const BoxDecoration(color: glass_fill),
      child: child,
    );
  }
}
