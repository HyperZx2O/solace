import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../design/motion/breathing_orb.dart';
import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../l10n/app_localizations.dart';

/// Grounding techniques. Opens in <1s: no async, no spinners.
class GroundingScreen extends StatefulWidget {
  const GroundingScreen({super.key, required this.id});

  final String id;

  @override
  State<GroundingScreen> createState() => _GroundingScreenState();
}

class _GroundingScreenState extends State<GroundingScreen> {
  bool _running = true;

  String _title(AppLocalizations l10n) {
    switch (widget.id) {
      case '54321':
        return l10n.g54321;
      case 'box':
        return l10n.gBox;
      case 'diaph':
        return l10n.gDiaph;
      case 'body':
        return l10n.gBody;
      case 'pmr':
        return l10n.gPmr;
      case 'safe':
        return l10n.gSafe;
      default:
        return l10n.groundingTitle;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final title = _title(l10n);
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(
        title: Text(l10n.groundingTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Reveal(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(height: 8),
              const Reveal(
                delay: Motion.stagger,
                child: Text(
                  'Follow the steps at your own pace. There is no timer and no score.',
                  style: TextStyle(color: body_muted),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: SingleChildScrollView(
                  child: Reveal(
                    delay: Motion.stagger * 2,
                    child: widget.id == '54321'
                        ? const _FiveFourThreeTwoOne()
                        : _BreathingSpace(
                            running: _running,
                            onToggle: () => setState(() => _running = !_running),
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              PrimaryPill(
                label: l10n.groundingDone,
                onPressed: () => Navigator.of(context).maybePop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BreathingSpace extends StatelessWidget {
  const _BreathingSpace({required this.running, required this.onToggle});

  final bool running;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        BreathingOrb(running: running),
        const SizedBox(height: 24),
        Text(
          running ? 'Let the circle set the pace.' : 'Paused. Start again when you are ready.',
          style: const TextStyle(color: body_muted),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        OutlinePill(
          label: running ? 'Pause' : 'Start',
          icon: running ? Icons.pause : Icons.play_arrow,
          onPressed: onToggle,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _FiveFourThreeTwoOne extends StatelessWidget {
  const _FiveFourThreeTwoOne();

  static const _steps = <(String, int)>[
    ('Things you can see', 5),
    ('Things you can touch', 4),
    ('Things you can hear', 3),
    ('Things you can smell', 2),
    ('Thing you can taste', 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final (label, count) in _steps)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _SenseStep(label: label, count: count),
          ),
      ],
    );
  }
}

class _SenseStep extends StatefulWidget {
  const _SenseStep({required this.label, required this.count});

  final String label;
  final int count;

  @override
  State<_SenseStep> createState() => _SenseStepState();
}

class _SenseStepState extends State<_SenseStep> {
  bool _done = false;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      checked: _done,
      label: '${widget.count} ${widget.label}',
      excludeSemantics: true,
      child: TouchFeedback(
        child: GestureDetector(
          onTap: () {
            HapticFeedback.selectionClick();
            setState(() => _done = !_done);
          },
          child: AnimatedContainer(
            duration: Motion.fast,
            curve: Motion.entrance,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: _done ? bot_sage_deep.withValues(alpha: 0.35) : glass_fill,
              border: Border.all(color: _done ? bot_sage : glass_border),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _done ? bot_sage : glass_fill,
                    border: Border.all(color: _done ? bot_sage : hairline),
                  ),
                  child: Text(
                    '${widget.count}',
                    style: TextStyle(
                      color: _done ? action_inverse_fg : heading,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    widget.label,
                    style: TextStyle(
                      color: _done ? heading : body_muted,
                      fontSize: 15,
                    ),
                  ),
                ),
                AnimatedScale(
                  scale: _done ? 1 : 0,
                  duration: Motion.hover,
                  curve: Motion.entrance,
                  child: const Icon(Icons.check_circle, color: bot_sage),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
