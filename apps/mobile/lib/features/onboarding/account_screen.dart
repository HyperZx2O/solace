import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../design/motion/motion.dart';
import '../../design/tokens.g.dart';
import '../../design/widgets/buttons.dart';
import '../../l10n/app_localizations.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _age = TextEditingController();
  bool _under18 = false;

  @override
  void dispose() {
    _age.dispose();
    super.dispose();
  }

  void _submit() {
    final age = int.tryParse(_age.text.trim()) ?? 0;
    setState(() => _under18 = age > 0 && age < 18);
    if (age >= 18) context.go('/onboarding/consent');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (_under18) {
      return Scaffold(
        backgroundColor: hero_base,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(gutter),
            child: Text(
              l10n.accountUnder18,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: hero_base,
      appBar: AppBar(title: const Text('Account')),
      body: SafeArea(
        child: Reveal(
          child: Padding(
            padding: const EdgeInsets.all(gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(l10n.accountAge18),
                const SizedBox(height: 12),
                TextField(
                  controller: _age,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Age'),
                ),
                const SizedBox(height: 16),
                PrimaryPill(label: l10n.accountContinue, onPressed: _submit),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
