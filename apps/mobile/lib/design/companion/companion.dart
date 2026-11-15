import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../motion/motion.dart';
import '../tokens.g.dart';

enum CompanionState { rest, calm, low, joyful }

/// The Solace companion. Drawn from `assets/creature/companion.svg`.
///
/// It breathes, watches the pointer, naps after 12s of quiet, and squashes
/// when touched. All movement is transform + opacity only and stops when
/// `disableAnimations` is set (DESIGN.md §6).
class Companion extends StatefulWidget {
  const Companion({
    super.key,
    this.state = CompanionState.rest,
    this.onTap,
    this.size = 96,
  });

  final CompanionState state;
  final VoidCallback? onTap;
  final double size;

  @override
  State<Companion> createState() => _CompanionState();
}

class _CompanionState extends State<Companion>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late final AnimationController _idle;
  late final AnimationController _press;
  Timer? _napTimer;
  bool _napping = false;
  bool _reduce = false;
  Offset _gaze = Offset.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _idle = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _press = AnimationController(
      vsync: this,
      duration: Motion.press,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reduce = Motion.reduced(context);
    if (_reduce) {
      _idle.stop();
      _napTimer?.cancel();
      _napTimer = null;
    } else if (!_idle.isAnimating) {
      _idle.repeat(reverse: true);
      _scheduleNap();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _idle.stop();
      _napTimer?.cancel();
      _napTimer = null;
    } else if (state == AppLifecycleState.resumed && !_reduce) {
      if (!_idle.isAnimating) _idle.repeat(reverse: true);
      _scheduleNap();
    }
  }

  void _scheduleNap() {
    _napTimer?.cancel();
    if (_reduce) return;
    _napTimer = Timer(const Duration(seconds: 12), () {
      if (!mounted) return;
      setState(() => _napping = true);
    });
  }

  void _wake() {
    if (_napping) setState(() => _napping = false);
    _scheduleNap();
  }

  void _onTap() {
    _wake();
    if (!_reduce) _press.forward(from: 0);
    widget.onTap?.call();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _idle.dispose();
    _press.dispose();
    _napTimer?.cancel();
    super.dispose();
  }

  void _updateGaze(Offset local, Size size) {
    if (_reduce || size.width == 0 || size.height == 0) return;
    final next = Offset(
      (local.dx / size.width * 2 - 1).clamp(-1.0, 1.0).toDouble(),
      (local.dy / size.height * 2 - 1).clamp(-1.0, 1.0).toDouble(),
    );
    if ((next - _gaze).distance < 0.05) return;
    setState(() => _gaze = next);
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.size;
    final height = widget.size * 0.75;
    return LayoutBuilder(
      builder: (context, constraints) {
        final box = Size(
          constraints.maxWidth.isFinite ? constraints.maxWidth : width,
          constraints.maxHeight.isFinite ? constraints.maxHeight : height,
        );
        return Semantics(
          container: true,
          image: widget.onTap == null,
          button: widget.onTap != null,
          label: 'Your companion',
          child: MouseRegion(
            onHover: (event) => _updateGaze(event.localPosition, box),
            onExit: (_) {
              if (_gaze != Offset.zero) setState(() => _gaze = Offset.zero);
            },
            child: GestureDetector(
              onTap: _onTap,
              child: AnimatedBuilder(
                animation: Listenable.merge([_idle, _press]),
                builder: (context, _) {
                  final idle = _idle.value;
                  final press = _press.value;
                  final reduce = _reduce;
                  final tilt = reduce ? 0.0 : (idle - 0.5) * 0.045;
                  final bob = reduce ? 0.0 : (idle - 0.5) * 3.5;
                  final squash = reduce ? 0.0 : math.sin(press * math.pi);
                  final bounce =
                      reduce ? 0.0 : math.sin(press * math.pi * 3) * (1 - press);
                  final scaleX = 1 + squash * 0.055;
                  final scaleY = 1 - squash * 0.09 + bounce * 0.03;
                  return Transform.translate(
                    offset: Offset(_gaze.dx * 4 + bob * 0.6, _gaze.dy * 3 + bob),
                    child: Transform.rotate(
                      angle: tilt,
                      child: Transform.scale(
                        scaleX: scaleX,
                        scaleY: scaleY,
                        child: Opacity(
                          opacity: _napping ? 0.55 : 1,
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: width,
                                height: height,
                                child: SvgPicture.asset(
                                  'assets/creature/companion.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                top: height * 0.08,
                                right: width * 0.16,
                                child: AnimatedOpacity(
                                  opacity: _napping ? 1 : 0,
                                  duration: Motion.hover,
                                  child: AnimatedSlide(
                                    offset: _napping
                                        ? Offset.zero
                                        : const Offset(0, 0.4),
                                    duration: Motion.hover,
                                    curve: Motion.entrance,
                                    child: const ExcludeSemantics(
                                      child: Text(
                                        'z',
                                        style: TextStyle(
                                          color: bot_lavender,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
