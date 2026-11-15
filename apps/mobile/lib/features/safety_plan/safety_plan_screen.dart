import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/session_store.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../l10n/app_localizations.dart';

/// Safety plan view/edit. Offline: read-only.
class SafetyPlanScreen extends ConsumerStatefulWidget {
  const SafetyPlanScreen({super.key, this.readOnly = false});

  final bool readOnly;

  @override
  ConsumerState<SafetyPlanScreen> createState() => _SafetyPlanScreenState();
}

class _SafetyPlanScreenState extends ConsumerState<SafetyPlanScreen> {
  final _fields = List<TextEditingController>.generate(
    5,
    (_) => TextEditingController(),
  );
  bool _shared = false;

  @override
  void initState() {
    super.initState();
    final plan = ref.read(sessionStoreProvider).plan;
    for (var i = 0; i < _fields.length; i++) {
      _fields[i].text = plan.fields[i];
    }
    _shared = plan.shared;
  }

  @override
  void dispose() {
    for (final c in _fields) {
      c.dispose();
    }
    super.dispose();
  }

  void _save() {
    final plan = SafetyPlan(
      field1: _fields[0].text.trim(),
      field2: _fields[1].text.trim(),
      field3: _fields[2].text.trim(),
      field4: _fields[3].text.trim(),
      field5: _fields[4].text.trim(),
      shared: _shared,
    );
    ref.read(sessionStoreProvider.notifier).saveSafetyPlan(plan);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(content: Text('Saved for this session.')),
      );
    Navigator.of(context).maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: Text(l10n.crisisSafetyPlanTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(gutter, gutter, gutter, 24),
          children: [
            const Text(
              'Kept for this session. Closing the app clears it.',
              style: TextStyle(color: body_muted, fontSize: 12),
            ),
            const SizedBox(height: 12),
            if (widget.readOnly)
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  'Read-only while offline.',
                  style: TextStyle(color: body_muted),
                ),
              ),
            for (var i = 0; i < _fields.length; i++) ...[
              TextField(
                controller: _fields[i],
                readOnly: widget.readOnly,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: safetyPlanLabels[i],
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
            ],
            SwitchListTile(
              value: _shared,
              onChanged: widget.readOnly
                  ? null
                  : (v) => setState(() => _shared = v),
              title: const Text('Share with therapist'),
              subtitle: const Text(
                'Your private note is never shared.',
                style: TextStyle(color: body_muted, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: widget.readOnly
          ? null
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(gutter, 8, gutter, gutter),
                child: PrimaryPill(label: 'Save', onPressed: _save),
              ),
            ),
    );
  }
}
