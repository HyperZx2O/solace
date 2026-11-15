import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/session.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';

class TherapistWelcomeScreen extends StatelessWidget {
  const TherapistWelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      _simple('What this platform is and is not');
}

class TherapistAccountScreen extends StatelessWidget {
  const TherapistAccountScreen({super.key});
  @override
  Widget build(BuildContext context) => _simple('Account and licence');
}

class TherapistDsaScreen extends StatefulWidget {
  const TherapistDsaScreen({super.key});
  @override
  State<TherapistDsaScreen> createState() => _TherapistDsaScreenState();
}

class _TherapistDsaScreenState extends State<TherapistDsaScreen> {
  final _ctrl = ScrollController();
  bool _reachedEnd = false;

  @override
  void initState() {
    super.initState();
    _ctrl.addListener(() {
      if (_ctrl.position.pixels >= _ctrl.position.maxScrollExtent - 8) {
        if (!_reachedEnd) setState(() => _reachedEnd = true);
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Data Sharing Agreement')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                controller: _ctrl,
                padding: const EdgeInsets.all(gutter),
                children: const [
                  Text('Scroll to the end to accept.'),
                  SizedBox(height: 1200),
                  Text('End of agreement.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(gutter),
              child: PrimaryPill(
                label: 'Accept',
                onPressed: _reachedEnd ? () {} : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TherapistCrisisRespScreen extends StatefulWidget {
  const TherapistCrisisRespScreen({super.key});
  @override
  State<TherapistCrisisRespScreen> createState() =>
      _TherapistCrisisRespScreenState();
}

class _TherapistCrisisRespScreenState extends State<TherapistCrisisRespScreen> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Crisis responsibilities')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CheckboxListTile(
                value: _checked,
                onChanged: (v) => setState(() => _checked = v ?? false),
                title: const Text('I acknowledge the crisis responsibilities.'),
              ),
              const Spacer(),
              PrimaryPill(
                label: 'Continue',
                onPressed: _checked ? () {} : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TherapistAiScreen extends StatelessWidget {
  const TherapistAiScreen({super.key});
  @override
  Widget build(BuildContext context) => _simple('How the AI works');
}

class TherapistContactScreen extends StatelessWidget {
  const TherapistContactScreen({super.key});
  @override
  Widget build(BuildContext context) => _simple('Emergency-contact statement');
}

class TherapistPendingScreen extends StatelessWidget {
  const TherapistPendingScreen({super.key});
  @override
  Widget build(BuildContext context) => _simple('Pending verification');
}

class TherapistInviteAcceptScreen extends StatelessWidget {
  const TherapistInviteAcceptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Invite from: Alex', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 8),
              const Text(
                'No patient data is shown until the patient confirms.',
                style: TextStyle(color: body_muted),
              ),
              const Spacer(),
              PrimaryPill(label: 'Accept invite', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class TherapistPatientListScreen extends ConsumerWidget {
  const TherapistPatientListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Groups in server order; never re-sort on client.
    const groups = [
      'Needs Attention',
      'Check In When You Can',
      'Progressing Well',
    ];
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(
        title: const Text('Patients'),
        actions: [
          IconButton(
            tooltip: 'Switch to patient',
            onPressed: () {
              ref.read(authSessionProvider).enterDemo();
              context.go('/home');
            },
            icon: const Icon(Icons.person_outline),
          ),
          IconButton(
            tooltip: 'Therapist settings',
            onPressed: () => context.push('/t/settings'),
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            for (var i = 0; i < groups.length; i++) ...[
              Padding(
                padding: const EdgeInsets.all(gutter),
                child: Text(
                  groups[i],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              if (i == 0)
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: bot_sage_deep,
                    child: Text('D', style: TextStyle(color: heading)),
                  ),
                  title: const Text('Demo patient'),
                  subtitle: const Text(
                    'Placeholder, no clinical data',
                    style: TextStyle(color: body_muted, fontSize: 12),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.push('/t/patients/demo'),
                )
              else
                const ListTile(title: Text('No patients yet')),
            ],
            const Padding(
              padding: EdgeInsets.all(gutter),
              child: Text(
                'No recent activity',
                style: TextStyle(color: body_muted),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TherapistPatientDetailScreen extends StatelessWidget {
  const TherapistPatientDetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text('Patient $id')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(gutter),
          children: [
            const Text(
              'AI summary (AI draft)',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            const Text(
              'AI drafts are suggestions only. You know your patient. Review carefully before sending.',
              style: TextStyle(color: body_muted, fontSize: 12),
            ),
            const SizedBox(height: 12),
            const Text('Safety plan: shared (private note never shared)'),
            const SizedBox(height: 12),
            const Text('Survey results: none yet (demo)'),
            const SizedBox(height: 24),
            PrimaryPill(
              label: 'Open alert',
              icon: Icons.notifications_active_outlined,
              onPressed: () => context.push('/t/alerts/demo'),
            ),
          ],
        ),
      ),
    );
  }
}

class TherapistAlertScreen extends StatefulWidget {
  const TherapistAlertScreen({super.key, required this.id});
  final String id;

  @override
  State<TherapistAlertScreen> createState() => _TherapistAlertScreenState();
}

class _TherapistAlertScreenState extends State<TherapistAlertScreen> {
  final _checked = <int>{};
  bool _resolved = false;

  static const _steps = <String>[
    'I spoke with the patient',
    'Patient confirmed they are currently safe',
    'Follow-up plan is in place',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text('Alert ${widget.id}')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Elapsed: 4 minutes (demo)'),
              const SizedBox(height: 4),
              const Text(
                'Trigger: mood alert (demo)',
                style: TextStyle(color: body_muted),
              ),
              const SizedBox(height: 4),
              const Text('Recent mood: Tender (demo)'),
              const SizedBox(height: 12),
              const Text(
                'This does not replace clinical judgment.',
                style: TextStyle(color: body_muted, fontSize: 12),
              ),
              const SizedBox(height: 16),
              for (var i = 0; i < _steps.length; i++)
                CheckboxListTile(
                  value: _checked.contains(i),
                  onChanged: _resolved
                      ? null
                      : (v) => setState(() {
                          if (v ?? false) {
                            _checked.add(i);
                          } else {
                            _checked.remove(i);
                          }
                        }),
                  title: Text(_steps[i]),
                ),
              const Spacer(),
              PrimaryPill(
                label: _resolved ? 'Resolved (demo)' : 'Resolve',
                onPressed: _checked.length == _steps.length && !_resolved
                    ? () {
                        setState(() => _resolved = true);
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text('Resolved. Demo only, nothing was sent.'),
                            ),
                          );
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TherapistSettingsScreen extends StatelessWidget {
  const TherapistSettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Therapist settings')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(gutter),
          children: const [
            ListTile(
              title: Text('Crisis notifications'),
              subtitle: Text('Always on (locked)'),
              trailing: Icon(Icons.lock),
            ),
            ListTile(title: Text('MFA'), subtitle: Text('Strongly encouraged')),
          ],
        ),
      ),
    );
  }
}

class ReauthScreen extends StatelessWidget {
  const ReauthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Re-authenticate to continue',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 16),
              PrimaryPill(label: 'Continue', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _simple(String title) {
  return Scaffold(
    backgroundColor: hero_base,
    appBar: AppBar(title: Text(title)),
    body: const SafeArea(child: SizedBox.expand()),
  );
}
