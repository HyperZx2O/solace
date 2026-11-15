import 'package:flutter/material.dart';

import '../tokens.g.dart';
import 'motion.dart';

/// A paced breathing orb. 4 seconds in, 4 hold, 4 out, 4 hold.
/// Transform + opacity only; static under reduced motion.
class BreathingOrb extends StatefulWidget {
  const BreathingOrb({
    super.key,
    this.cycle = const Duration(seconds: 16),
    this.running = true,
    this.size = 220,
  });

  final Duration cycle;
  final bool running;
  final double size;

  @override
  State<BreathingOrb> createState() => _BreathingOrbState();
}

class _BreathingOrbState extends State<BreathingOrb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _reduce = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.cycle);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reduce = Motion.reduced(context);
    _sync();
  }

  @override
  void didUpdateWidget(BreathingOrb oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.running != widget.running ||
        oldWidget.cycle != widget.cycle) {
      _controller.duration = widget.cycle;
      _sync();
    }
  }

  void _sync() {
    if (_reduce || !widget.running) {
      _controller.stop();
    } else if (!_controller.isAnimating) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _scaleAt(double value) {
    if (_reduce) return 0.84;
    if (value < 0.25) {
      return 0.66 + 0.34 * Curves.easeInOut.transform(value / 0.25);
    }
    if (value < 0.5) return 1.0;
    if (value < 0.75) {
      return 1.0 - 0.34 * Curves.easeInOut.transform((value - 0.5) / 0.25);
    }
    return 0.66;
  }

  String _phaseAt(double value) {
    if (_reduce) return 'Breathe at your own pace';
    const phases = ['Breathe in', 'Hold', 'Breathe out', 'Hold'];
    return phases[(value * 4).floor().clamp(0, 3).toInt()];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final value = _controller.value;
        final scale = _scaleAt(value);
        final label = _phaseAt(value);
        return SizedBox(
          width: widget.size,
          height: widget.size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.scale(
                scale: scale * 1.12,
                child: Container(
                  width: widget.size,
                  height: widget.size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: accent.withValues(alpha: 0.06),
                    border: Border.all(color: accent.withValues(alpha: 0.18)),
                  ),
                ),
              ),
              Transform.scale(
                scale: scale,
                child: Container(
                  width: widget.size,
                  height: widget.size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: accent.withValues(alpha: 0.16),
                    border: Border.all(color: accent.withValues(alpha: 0.55)),
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: Motion.fast,
                switchInCurve: Motion.entrance,
                child: Text(
                  label,
                  key: ValueKey(label),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
