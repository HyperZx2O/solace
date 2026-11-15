import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../design/widgets/chips_tabs.dart';
import '../../l10n/app_localizations.dart';

class ConsentScreen extends StatefulWidget {
  const ConsentScreen({super.key});

  @override
  State<ConsentScreen> createState() => _ConsentScreenState();
}

class _ConsentScreenState extends State<ConsentScreen> {
  final _items = <String, bool>{
    'mood_task_data': false,
    'journal_storage': false,
    'crisis_detection': false,
  };

  bool get _allRequired => _items.values.every((v) => v);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text(l10n.consentTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(gutter),
          children: [
            for (final e in _items.entries)
              CheckboxListTile(
                value: e.value,
                onChanged: (v) => setState(() => _items[e.key] = v ?? false),
                title: Text(e.key),
                subtitle: Text(
                  l10n.consentRequired,
                  style: const TextStyle(color: body_muted, fontSize: 12),
                ),
              ),
            const SizedBox(height: 16),
            PrimaryPill(
              label: l10n.accountContinue,
              onPressed: _allRequired
                  ? () => context.go('/onboarding/restriction')
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

class RestrictionScreen extends StatelessWidget {
  const RestrictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.restrictionTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              PrimaryPill(
                label: l10n.accountContinue,
                onPressed: () => context.go('/onboarding/survey'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  int _q = 0;
  final _answers = <int, int>{};

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text(l10n.surveyTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Question ${_q + 1} of 3'),
              const SizedBox(height: 16),
              for (var i = 1; i <= 4; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: OutlinePill(
                    label: 'Option $i',
                    onPressed: () {
                      _answers[_q] = i;
                      if (_q < 2) {
                        setState(() => _q++);
                      }
                    },
                  ),
                ),
              const Spacer(),
              PrimaryPill(
                label: l10n.surveyContinue,
                onPressed: () => context.go('/onboarding/results'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.resultsTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                l10n.resultsProvisional,
                style: const TextStyle(color: body_muted),
              ),
              const Spacer(),
              PrimaryPill(
                label: l10n.accountContinue,
                onPressed: () => context.go('/onboarding/prefs'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrefsScreen extends StatefulWidget {
  const PrefsScreen({super.key});

  @override
  State<PrefsScreen> createState() => _PrefsScreenState();
}

class _PrefsScreenState extends State<PrefsScreen> {
  final _selected = <String>{};

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text(l10n.prefsTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                spacing: 8,
                children: ['morning', 'evening', 'weekend'].map((p) {
                  return ChipLabel(
                    label: p,
                    selected: _selected.contains(p),
                    onTap: () => setState(() {
                      if (_selected.contains(p)) {
                        _selected.remove(p);
                      } else {
                        _selected.add(p);
                      }
                    }),
                  );
                }).toList(),
              ),
              if (_selected.isEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    l10n.prefsNoneSelected,
                    style: const TextStyle(color: body_muted),
                  ),
                ),
              const Spacer(),
              PrimaryPill(
                label: l10n.accountContinue,
                onPressed: () => context.go('/onboarding/therapist'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TherapistPromptScreen extends StatelessWidget {
  const TherapistPromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.therapistPromptTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(l10n.therapistPrompt),
              const Spacer(),
              PrimaryPill(
                label: l10n.accountContinue,
                onPressed: () => context.go('/home'),
              ),
              const SizedBox(height: 8),
              OutlinePill(
                label: l10n.therapistLater,
                onPressed: () => context.go('/home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
