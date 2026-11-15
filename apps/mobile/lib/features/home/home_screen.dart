import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../design/companion/companion.dart';
import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../design/widgets/surfaces.dart';
import '../../l10n/app_localizations.dart';
import 'task_checkin_sheets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      body: BotanicalBackdrop(
        child: SafeArea(child: _content(context)),
      ),
    );
  }

  Widget _content(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final compact =
        MediaQuery.sizeOf(context).width < 380 ||
        MediaQuery.textScalerOf(context).scale(1) > 1.3;
    return ListView(
      padding: const EdgeInsets.fromLTRB(gutter, 12, gutter, gutter + 8),
      children: [
        Reveal(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Semantics(
                  container: true,
                  explicitChildNodes: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: bot_sage_deep.withValues(alpha: 0.35),
                        borderRadius: BorderRadius.circular(999),
                        border: Border.all(color: hairline),
                      ),
                      child: const Text(
                        'Demo space',
                        style: TextStyle(color: bot_leaf, fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Your space',
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'No streaks. No scores. Just today.',
                      style: TextStyle(color: body_muted),
                    ),
                  ],
                ),
              ),
            ),
              const SizedBox(width: 12),
              Companion(
                state: CompanionState.calm,
                size: compact ? 88 : 104,
                onTap: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text('Right here. Take your time.'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                },
              ),
              const SizedBox(width: 48),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Reveal(
          delay: Motion.stagger,
          child: GlassSurface(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  l10n.homeFocus,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 6),
                const Text(
                  'A small task, chosen for today. You can stop at any point.',
                  style: TextStyle(color: body_muted),
                ),
                const SizedBox(height: 16),
                PrimaryPill(
                  label: l10n.taskStart,
                  icon: Icons.arrow_forward,
                  onPressed: () => context.push('/task/today'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Reveal(
          delay: Motion.stagger * 2,
          child: OutlinePill(
            label: l10n.homeCheckin,
            icon: Icons.favorite_border,
            onPressed: () => showCheckInSheet(context),
          ),
        ),
        const SizedBox(height: 28),
        Reveal(
          delay: Motion.stagger * 3,
          child: Text(
            'Where to next',
            style: theme.textTheme.titleSmall,
          ),
        ),
        const SizedBox(height: 12),
        Reveal(
          delay: Motion.stagger * 4,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final width = (constraints.maxWidth - 10) / 2;
              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _QuickLink(
                    width: width,
                    icon: Icons.shield_outlined,
                    label: l10n.crisisSafetyPlanTitle,
                    onTap: () => context.push('/safety-plan'),
                  ),
                  _QuickLink(
                    width: width,
                    icon: Icons.self_improvement,
                    label: 'Grounding',
                    onTap: () => context.push('/grounding/box'),
                  ),
                  _QuickLink(
                    width: width,
                    icon: Icons.edit_note,
                    label: 'Recovery journal',
                    onTap: () => context.go('/journal/recovery'),
                  ),
                  _QuickLink(
                    width: width,
                    icon: Icons.insights,
                    label: 'Mood history',
                    onTap: () => context.go('/history/mood'),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 28),
        Reveal(
          delay: Motion.stagger * 5,
          child: GlassSurface(
            child: Row(
              children: [
                const Icon(Icons.phone, color: accent, size: 20),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Here is a number you can call right now.',
                    style: TextStyle(color: body_muted),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () => context.push('/crisis'),
                  child: const Text('Get help'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _QuickLink extends StatelessWidget {
  const _QuickLink({
    required this.width,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final double width;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Semantics(
        button: true,
        label: label,
        excludeSemantics: true,
        child: TouchFeedback(
          child: GestureDetector(
            onTap: () {
              HapticFeedback.selectionClick();
              onTap();
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: glass_fill,
                border: Border.all(color: glass_border),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, color: accent, size: 20),
                  const SizedBox(height: 10),
                  Text(
                    label,
                    style: const TextStyle(color: heading, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
