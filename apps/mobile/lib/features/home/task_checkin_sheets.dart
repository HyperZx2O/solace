import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../design/widgets/chips_tabs.dart';
import '../../design/widgets/surfaces.dart';
import '../../l10n/app_localizations.dart';
import '../../app/modal.dart';

Future<T?> _sheet<T>(BuildContext context, Widget child) async {
  modalOpen.value++;
  try {
    return await showModalBottomSheet<T>(
      context: context,
      backgroundColor: hero_base,
      useSafeArea: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => child,
    );
  } finally {
    modalOpen.value--;
  }
}

Future<void> showCheckInSheet(BuildContext context) async {
  HapticFeedback.selectionClick();
  await _sheet<void>(context, const CheckInSheet());
}

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key, required this.id});
  final String id;

  Future<void> _start(BuildContext context) async {
    final helped = await _sheet<bool>(context, const DidThisHelpSheet());
    if (helped != null && context.mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(helped ? 'Logged. Thank you.' : 'Logged. That is okay.'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(
        title: Text(id == 'today' ? "Today's task" : 'Task $id'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Reveal(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(l10n.taskWhy, style: const TextStyle(color: body_muted)),
                const SizedBox(height: 16),
                const GlassSurface(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _TaskStep(number: 1, label: 'Notice where you are.'),
                      SizedBox(height: 12),
                      _TaskStep(number: 2, label: 'Take one slow breath.'),
                      SizedBox(height: 12),
                      _TaskStep(number: 3, label: 'Choose the smallest next step.'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                PrimaryPill(
                  label: l10n.taskDone,
                  icon: Icons.check,
                  onPressed: () => _start(context),
                ),
                const SizedBox(height: 8),
                OutlinePill(
                  label: l10n.taskTooHard,
                  onPressed: () => _sheet<void>(context, const SwapSheet()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TaskStep extends StatelessWidget {
  const _TaskStep({required this.number, required this.label});

  final int number;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 26,
          height: 26,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: hairline_strong),
          ),
          child: Text(
            '$number',
            style: const TextStyle(color: body_muted, fontSize: 12),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(child: Text(label, style: const TextStyle(color: heading))),
      ],
    );
  }
}

class SwapSheet extends StatelessWidget {
  const SwapSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(gutter),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _SheetHandle(),
          const SizedBox(height: 12),
          Text(l10n.swapTitle, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Text(l10n.swapReason, style: const TextStyle(color: body_muted)),
          const SizedBox(height: 8),
          Text(
            l10n.swapNoAlternative,
            style: const TextStyle(color: body_muted),
          ),
          const SizedBox(height: 16),
          OutlinePill(
            label: 'Close',
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class CheckInSheet extends StatefulWidget {
  const CheckInSheet({super.key});

  @override
  State<CheckInSheet> createState() => _CheckInSheetState();
}

class _CheckInSheetState extends State<CheckInSheet> {
  static const _moods = ['Low', 'Tender', 'Steady', 'Bright', 'Good'];
  String? _mood;

  void _submit() {
    final messenger = ScaffoldMessenger.of(context);
    Navigator.of(context).pop();
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text('Checked in as $_mood. Thank you.')),
      );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(gutter),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _SheetHandle(),
          const SizedBox(height: 12),
          Text(
            l10n.homeCheckin,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 6),
          const Text(
            'How is today sitting with you?',
            style: TextStyle(color: body_muted),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final mood in _moods)
                ChipLabel(
                  label: mood,
                  selected: _mood == mood,
                  onTap: () {
                    HapticFeedback.selectionClick();
                    setState(() => _mood = mood);
                  },
                ),
            ],
          ),
          const SizedBox(height: 20),
          PrimaryPill(
            label: l10n.accountContinue,
            onPressed: _mood == null ? null : _submit,
          ),
        ],
      ),
    );
  }
}

class DidThisHelpSheet extends StatelessWidget {
  const DidThisHelpSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(gutter),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _SheetHandle(),
          const SizedBox(height: 12),
          Text(
            'Did this help?',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: OutlinePill(
                  label: l10n.helpYes,
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinePill(
                  label: l10n.helpNo,
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SheetHandle extends StatelessWidget {
  const _SheetHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 36,
        height: 4,
        decoration: BoxDecoration(
          color: hairline_strong,
          borderRadius: BorderRadius.circular(999),
        ),
      ),
    );
  }
}
