import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../auth/session.dart';
import '../design/motion/motion.dart';
import '../design/tokens.g.dart';
import '../design/widgets/buttons.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final ok = await ref
          .read(authSessionProvider)
          .login(_email.text.trim(), _password.text);
      if (!mounted) return;
      if (ok) {
        context.go('/home');
      } else {
        setState(() => _error = 'Login failed');
      }
    } catch (e) {
      if (mounted) setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _demo() {
    ref.read(authSessionProvider).enterDemo();
    context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Reveal(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Log in',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _email,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _password,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                if (_error != null) ...[
                  const SizedBox(height: 8),
                  Text(_error!, style: const TextStyle(color: bot_clay)),
                ],
                const SizedBox(height: 16),
                PrimaryPill(
                  label: _busy ? 'Logging in…' : 'Log in',
                  onPressed: _busy ? null : _submit,
                ),
                const SizedBox(height: 8),
                AccentLink(
                  label: 'Create account',
                  onPressed: () => context.go('/signup'),
                ),
                const Spacer(),
                const Text(
                  'Demo account\n${AuthSession.demoEmail} · ${AuthSession.demoPassword}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: body_muted, fontSize: 12),
                ),
                const SizedBox(height: 10),
                OutlinePill(
                  label: 'Continue with demo account',
                  onPressed: _demo,
                ),
                const SizedBox(height: 4),
                AccentLink(
                  label: 'Back to start',
                  onPressed: () => context.go('/open'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final ok = await ref
          .read(authSessionProvider)
          .signup(_email.text.trim(), _password.text);
      if (!mounted) return;
      if (ok) {
        context.go('/onboarding/welcome');
      } else {
        setState(() => _error = 'Signup failed');
      }
    } catch (e) {
      if (mounted) setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _demo() {
    ref.read(authSessionProvider).enterDemo();
    context.go('/onboarding/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hero_base,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(gutter),
          child: Reveal(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Create account',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _email,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _password,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                if (_error != null) ...[
                  const SizedBox(height: 8),
                  Text(_error!, style: const TextStyle(color: bot_clay)),
                ],
                const SizedBox(height: 16),
                PrimaryPill(
                  label: _busy ? 'Creating…' : 'Sign up',
                  onPressed: _busy ? null : _submit,
                ),
                const Spacer(),
                OutlinePill(
                  label: 'Create demo account',
                  onPressed: _demo,
                ),
                const SizedBox(height: 4),
                AccentLink(
                  label: 'Back to start',
                  onPressed: () => context.go('/open'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
