import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/modal.dart';
import '../../auth/session.dart';
import '../../data/session_store.dart';
import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../design/widgets/surfaces.dart';
import '../home/task_checkin_sheets.dart';

class RecoveryJournalScreen extends ConsumerStatefulWidget {
  const RecoveryJournalScreen({super.key, this.locked = false});

  final bool locked;

  @override
  ConsumerState<RecoveryJournalScreen> createState() =>
      _RecoveryJournalScreenState();
}

class _RecoveryJournalScreenState
    extends ConsumerState<RecoveryJournalScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    HapticFeedback.selectionClick();
    ref.read(sessionStoreProvider.notifier).addJournal(text);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(content: Text('Saved for this session.')),
      );
    _controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Recovery journal')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: widget.locked
              ? const Center(
                  child: Text(
                    'Locked (Level 2+)',
                    style: TextStyle(color: body_muted),
                  ),
                )
              : Reveal(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'A private page for what today was like. No one else reads this unless you choose to share it.',
                        style: TextStyle(color: body_muted),
                      ),
                      const SizedBox(height: 12),
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          maxLines: null,
                          expands: true,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: const InputDecoration(
                            hintText: 'Start anywhere.',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ValueListenableBuilder<TextEditingValue>(
                        valueListenable: _controller,
                        builder: (context, value, _) => PrimaryPill(
                          label: 'Save entry',
                          onPressed: value.text.trim().isEmpty ? null : _save,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

class PersonalJournalScreen extends ConsumerStatefulWidget {
  const PersonalJournalScreen({super.key});

  @override
  ConsumerState<PersonalJournalScreen> createState() =>
      _PersonalJournalScreenState();
}

class _PersonalJournalScreenState
    extends ConsumerState<PersonalJournalScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    HapticFeedback.selectionClick();
    ref.read(sessionStoreProvider.notifier).addJournal(text);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(content: Text('Saved for this session.')),
      );
    _controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Personal journal')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Reveal(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'This field is personal. It is never shared with a therapist.',
                  style: TextStyle(color: body_muted),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    maxLines: null,
                    expands: true,
                    maxLength: 20000,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: const InputDecoration(
                      hintText: 'Only you can read this.',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _controller,
                  builder: (context, value, _) => PrimaryPill(
                    label: 'Save entry',
                    onPressed: value.text.trim().isEmpty ? null : _save,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.read(authSessionProvider);
    final isTherapist = session.role == AppRole.therapist;
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Settings')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 32),
          children: [
            Reveal(
              child: Padding(
                padding: const EdgeInsets.all(gutter),
                child: GlassSurface(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: bot_sage_deep,
                        child: Icon(Icons.person, color: heading, size: 20),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              isTherapist ? 'Demo therapist' : 'Demo patient',
                              style: const TextStyle(color: heading),
                            ),
                            const Text(
                              'Local demo account, no network',
                              style: TextStyle(
                                color: body_muted,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.verified, color: bot_leaf, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            _SettingsTile(
              icon: Icons.shield_outlined,
              label: 'Safety plan',
              onTap: () => context.push('/safety-plan'),
            ),
            _SettingsTile(
              icon: Icons.lock_outline,
              label: 'Privacy and access log',
              onTap: () => context.push('/settings/privacy'),
            ),
            _SettingsTile(
              icon: Icons.download_outlined,
              label: 'Export my data',
              onTap: () => context.push('/settings/export'),
            ),
            _SettingsTile(
              icon: Icons.pause_circle_outline,
              label: 'Pause data processing',
              onTap: () => context.push('/settings/pause'),
            ),
            _SettingsTile(
              icon: Icons.link,
              label: 'Therapist connection',
              onTap: () => context.push('/connection'),
            ),
            const Divider(),
            SwitchListTile(
              value: isTherapist,
              onChanged: (value) {
                HapticFeedback.selectionClick();
                ref.read(authSessionProvider).enterDemo(
                  role: value ? AppRole.therapist : AppRole.patient,
                );
                context.go(value ? '/t/patients' : '/home');
              },
              secondary: const Icon(Icons.swap_horiz, color: heading),
              title: const Text('Therapist demo'),
              subtitle: const Text(
                'Switch the demo account between patient and therapist.',
                style: TextStyle(color: body_muted, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(gutter),
              child: OutlinePill(
                label: 'Sign out of demo',
                icon: Icons.logout,
                onPressed: () {
                  ref.read(sessionStoreProvider.notifier).clear();
                  ref.read(authSessionProvider).leaveDemo();
                  context.go('/open');
                },
              ),
            ),
            const Divider(),
            _SettingsTile(
              icon: Icons.delete_outline,
              label: 'Delete account',
              onTap: () => context.push('/settings/delete'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: body_muted),
      title: Text(label),
      trailing: const Icon(Icons.chevron_right, color: body_muted),
      onTap: () {
        HapticFeedback.selectionClick();
        onTap();
      },
    );
  }
}

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _InfoScreen(
      title: 'Privacy and access log',
      body:
          'No one has opened your journal. Access would appear here with a time and a name.',
    );
  }
}

class ExportScreen extends StatelessWidget {
  const ExportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _InfoScreen(
      title: 'Export',
      body:
          'Export is not available in this demo. Nothing leaves this device.',
    );
  }
}

class DeleteAccountScreen extends ConsumerWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _InfoScreen(
      title: 'Delete account',
      body:
          'Deleting clears the safety plan and journal entries kept for this session.',
      actionLabel: 'Delete everything',
      destructive: true,
      onAction: () => _confirmDelete(context, ref),
    );
  }
}

Future<void> _confirmDelete(BuildContext context, WidgetRef ref) async {
  modalOpen.value++;
  final bool? confirmed;
  try {
    confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: hero_base,
        title: const Text('Delete everything?'),
        content: const Text(
          'This clears the safety plan and journal entries kept for this session.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  } finally {
    modalOpen.value--;
  }
  if (confirmed != true || !context.mounted) return;
  ref.read(sessionStoreProvider.notifier).clear();
  _toast(context, 'Demo build: session data cleared.');
}

class PauseScreen extends StatelessWidget {
  const PauseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _InfoScreen(
      title: 'Pause data processing',
      body:
          'Pausing stops reminders and sync. Crisis numbers and your safety plan stay available.',
      actionLabel: 'Pause for 7 days',
      onAction: () => _toast(context, 'Paused for 7 days (demo).'),
    );
  }
}

class MoodHistoryScreen extends StatelessWidget {
  const MoodHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _InfoScreen(
      title: '30-day mood',
      body:
          'No data yet. Check in once and your own pattern appears here. No scores, no streak pressure.',
      actionLabel: 'Check in',
      onAction: () => showCheckInSheet(context),
    );
  }
}

class TaskHistoryScreen extends StatelessWidget {
  const TaskHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _InfoScreen(
      title: 'Task history',
      body: 'No data yet. Tasks you finish will be listed here.',
      actionLabel: 'Go to today',
      onAction: () => context.go('/home'),
    );
  }
}

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _InfoScreen(
      title: 'Therapist connection',
      body:
          'No therapist connected. When you invite someone, only your first name is shown until you confirm.',
      actionLabel: 'Copy invite code',
      onAction: () {
        HapticFeedback.selectionClick();
        _toast(context, 'Invite code copied (demo).');
      },
    );
  }
}

void _toast(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}

class _InfoScreen extends StatelessWidget {
  const _InfoScreen({
    required this.title,
    required this.body,
    this.actionLabel,
    this.onAction,
    this.destructive = false,
  });

  final String title;
  final String body;
  final String? actionLabel;
  final VoidCallback? onAction;
  final bool destructive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Reveal(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GlassSurface(
                  child: Text(
                    body,
                    style: const TextStyle(color: body_muted),
                  ),
                ),
                const SizedBox(height: 24),
                if (actionLabel != null && onAction != null)
                  destructive
                      ? OutlinePill(label: actionLabel!, onPressed: onAction)
                      : PrimaryPill(label: actionLabel!, onPressed: onAction),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
