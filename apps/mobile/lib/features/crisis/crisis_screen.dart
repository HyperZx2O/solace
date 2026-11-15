import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../design/widgets/chips_tabs.dart';
import '../../design/widgets/surfaces.dart';
import '../../l10n/app_localizations.dart';

/// Stage A crisis screen. Opens with no network, no login, no server call.
/// Numbers come from the bundled (unverified) resources.json.
class CrisisScreen extends StatefulWidget {
  const CrisisScreen({super.key});

  @override
  State<CrisisScreen> createState() => _CrisisScreenState();
}

class _CrisisScreenState extends State<CrisisScreen> {
  Map<String, dynamic>? _resources;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final raw = await rootBundle.loadString('assets/crisis/resources.json');
    if (!mounted) return;
    setState(() => _resources = jsonDecode(raw) as Map<String, dynamic>);
  }

  Future<void> _call(String number) async {
    final dial = number.replaceAll(RegExp(r'[^0-9+]'), '');
    final uri = Uri(scheme: 'tel', path: dial);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // Fallback: copy to clipboard so the user can paste into the dialer.
      await Clipboard.setData(ClipboardData(text: number));
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Copied $number. Open your dialer to call.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final resources = ((_resources?['resources'] as List?) ?? const [])
        .where((r) => (r as Map<String, dynamic>)['unverified'] != true)
        .toList();
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),
              Reveal(
                child: Text(
                  l10n.crisisHeadline,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(height: 16),
              for (var i = 0; i < resources.length; i++)
                Reveal(
                  delay: Motion.stagger * (i + 1),
                  child: _resourceTile(
                    resources[i] as Map<String, dynamic>,
                    l10n,
                  ),
                ),
              const SizedBox(height: 24),
              Text(
                l10n.crisisSafetyPlanTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              GlassSurface(
                child: Text(
                  l10n.crisisSafetyPlanEmpty,
                  style: const TextStyle(color: body_muted),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                l10n.crisisGroundingTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ChipLabel(
                    label: '5-4-3-2-1',
                    onTap: () => context.push('/grounding/54321'),
                  ),
                  ChipLabel(
                    label: 'Box breathing',
                    onTap: () => context.push('/grounding/box'),
                  ),
                  ChipLabel(
                    label: 'Body scan',
                    onTap: () => context.push('/grounding/body'),
                  ),
                  ChipLabel(
                    label: 'Safe place',
                    onTap: () => context.push('/grounding/safe'),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _resourceTile(Map<String, dynamic> r, AppLocalizations l10n) {
    final number = (r['number'] ?? '').toString();
    final verified = r['lastVerifiedAt']?.toString();
    final hours = (r['hours'] ?? '').toString();
    final meta = [
      if (verified != null && verified.isNotEmpty)
        '${l10n.crisisVerified} $verified',
      if (hours.isNotEmpty) hours,
    ].join('. ');
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GlassSurface(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              r['name']?.toString() ?? '',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            PrimaryPill(
              label: number,
              icon: Icons.call,
              onPressed: () => _call(number),
            ),
            if (meta.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                meta,
                style: const TextStyle(color: body_muted, fontSize: 12),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
