import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../tokens.g.dart';

/// Motion primitives for Solace.
///
/// House rule (DESIGN.md §6): animate `transform` and `opacity` only. Every
/// primitive here degrades to a static frame when `disableAnimations` is set.
abstract final class Motion {
  /// From `tokens.g.dart`.
  static const Duration fast = duration_fast;
  static const Cubic entrance = ease_entrance;

  /// Reproduced from DESIGN_SYSTEM §5 / §7.1.
  static const Duration hover = Duration(milliseconds: 280);
  static const Duration page = Duration(milliseconds: 420);
  static const Duration reveal = Duration(milliseconds: 700);
  static const Duration press = Duration(milliseconds: 620);
  static const Duration stagger = Duration(milliseconds: 85);

  static bool reduced(BuildContext context) =>
      MediaQuery.maybeDisableAnimationsOf(context) ?? false;
}

/// Fade + rise entrance. Used for block reveals and staggered lists.
class Reveal extends StatefulWidget {
  const Reveal({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = Motion.reveal,
    this.begin = const Offset(0, 0.06),
    this.trigger = true,
  });

  final Widget child;
  final Duration delay;
  final Duration duration;
  final Offset begin;

  /// Set false to hold the content hidden until flipped to true.
  final bool trigger;

  @override
  State<Reveal> createState() => _RevealState();
}

class _RevealState extends State<Reveal> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  late final Animation<Offset> _slide;
  bool _started = false;
  bool _reduce = false;

  @override
  void initState() {
    super.initState();
    final total = widget.delay + widget.duration;
    _controller = AnimationController(
      vsync: this,
      duration: total == Duration.zero
          ? const Duration(milliseconds: 1)
          : total,
    );
    final totalMs = total.inMilliseconds;
    final start = totalMs == 0 ? 0.0 : widget.delay.inMilliseconds / totalMs;
    final curved = CurvedAnimation(
      parent: _controller,
      curve: Interval(start.clamp(0.0, 1.0).toDouble(), 1, curve: Motion.entrance),
    );
    _fade = curved;
    _slide = Tween<Offset>(begin: widget.begin, end: Offset.zero)
        .animate(curved);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reduce = Motion.reduced(context);
    if (_reduce) {
      _controller.value = 1;
      _started = true;
    } else if (!_started && widget.trigger) {
      _started = true;
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(Reveal oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.trigger && widget.trigger && !_reduce) {
      _started = true;
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fade,
      child: SlideTransition(position: _slide, child: widget.child),
    );
  }
}

/// Tactile press + hover feedback. Listens to raw pointer events so it never
/// steals a tap from the button inside it.
class TouchFeedback extends StatefulWidget {
  const TouchFeedback({
    super.key,
    required this.child,
    this.enabled = true,
    this.scale = 0.975,
    this.cursor = SystemMouseCursors.click,
  });

  final Widget child;
  final bool enabled;
  final double scale;
  final MouseCursor cursor;

  @override
  State<TouchFeedback> createState() => _TouchFeedbackState();
}

class _TouchFeedbackState extends State<TouchFeedback> {
  bool _pressed = false;
  bool _hover = false;

  void _setPressed(bool value) {
    if (!widget.enabled || _pressed == value) return;
    setState(() => _pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    final reduce = Motion.reduced(context);
    return Listener(
      onPointerDown: (_) => _setPressed(true),
      onPointerUp: (_) => _setPressed(false),
      onPointerCancel: (_) => _setPressed(false),
      child: MouseRegion(
        cursor: widget.enabled ? widget.cursor : MouseCursor.defer,
        onEnter: (_) => setState(() => _hover = true),
        onExit: (_) => setState(() {
          _hover = false;
          _pressed = false;
        }),
        child: AnimatedScale(
          scale: !reduce && _pressed ? widget.scale : 1,
          duration: Motion.fast,
          curve: Motion.entrance,
          child: AnimatedSlide(
            offset: !reduce && _hover && !_pressed
                ? const Offset(0, -0.012)
                : Offset.zero,
            duration: Motion.hover,
            curve: Motion.entrance,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

/// The dark stage: two botanical glows, a hairline garden grid and slow leaves.
/// Purely decorative; the painter is cheap and isolated in a repaint boundary.
class BotanicalBackdrop extends StatefulWidget {
  const BotanicalBackdrop({super.key, this.child});

  final Widget? child;

  @override
  State<BotanicalBackdrop> createState() => _BotanicalBackdropState();
}

class _BotanicalBackdropState extends State<BotanicalBackdrop>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _reduce = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 48),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reduce = Motion.reduced(context);
    if (_reduce) {
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RepaintBoundary(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (_, _) => CustomPaint(
              painter: _BotanicalPainter(_reduce ? 0.12 : _controller.value),
              child: const SizedBox.expand(),
            ),
          ),
        ),
        widget.child ?? const SizedBox.expand(),
      ],
    );
  }
}

class _BotanicalPainter extends CustomPainter {
  _BotanicalPainter(this.t);

  final double t;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    void glow(Alignment center, Color colour, double alpha, double radius) {
      canvas.drawRect(
        rect,
        Paint()
          ..shader = RadialGradient(
            center: center,
            radius: radius,
            colors: [
              colour.withValues(alpha: alpha),
              colour.withValues(alpha: 0),
            ],
          ).createShader(rect),
      );
    }

    glow(const Alignment(-0.85, -0.95), bot_sage, 0.11, 0.95);
    glow(const Alignment(0.95, 0.9), bot_clay, 0.08, 0.85);
    glow(const Alignment(0.15, -0.2), bot_lavender, 0.05, 0.6);

    final grid = Paint()
      ..color = bot_line.withValues(alpha: 0.18)
      ..strokeWidth = 0.5;
    const step = 72.0;
    for (double x = 0; x < size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), grid);
    }

    for (var i = 0; i < 9; i++) {
      final seed = i * 1.618;
      final phase = t * 2 * math.pi;
      final x =
          size.width * (0.1 + (i * 0.11) % 0.92) + math.sin(phase + seed) * 11;
      final y =
          size.height * (0.06 + (i * 0.13) % 0.9) +
          math.cos(phase + seed) * 15;
      final colour = i.isEven ? bot_leaf : bot_sage;
      _leaf(canvas, Offset(x, y), 24 + (i % 3) * 8, phase + seed, colour);
    }
  }

  void _leaf(Canvas canvas, Offset centre, double size, double rotation, Color colour) {
    canvas.save();
    canvas.translate(centre.dx, centre.dy);
    canvas.rotate(rotation);
    final path = Path()
      ..moveTo(0, -size)
      ..quadraticBezierTo(size * 0.55, -size * 0.2, 0, size)
      ..quadraticBezierTo(-size * 0.55, -size * 0.2, 0, -size)
      ..close();
    canvas.drawPath(
      path,
      Paint()
        ..color = colour.withValues(alpha: 0.06)
        ..style = PaintingStyle.fill,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(_BotanicalPainter oldDelegate) => oldDelegate.t != t;
}
