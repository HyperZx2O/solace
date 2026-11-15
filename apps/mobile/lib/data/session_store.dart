import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The five safety-plan prompts. Field 4 is private by design.
const safetyPlanLabels = <String>[
  'What makes today harder',
  'What helps me settle',
  'Who or what can distract me',
  'A private note (never shared)',
  'How I keep myself safe',
];

@immutable
class SafetyPlan {
  const SafetyPlan({
    this.field1 = '',
    this.field2 = '',
    this.field3 = '',
    this.field4 = '',
    this.field5 = '',
    this.shared = false,
  });

  final String field1;
  final String field2;
  final String field3;
  final String field4;
  final String field5;
  final bool shared;

  List<String> get fields => [field1, field2, field3, field4, field5];

  SafetyPlan copyWith({
    String? field1,
    String? field2,
    String? field3,
    String? field4,
    String? field5,
    bool? shared,
  }) {
    return SafetyPlan(
      field1: field1 ?? this.field1,
      field2: field2 ?? this.field2,
      field3: field3 ?? this.field3,
      field4: field4 ?? this.field4,
      field5: field5 ?? this.field5,
      shared: shared ?? this.shared,
    );
  }
}

@immutable
class JournalEntry {
  const JournalEntry({required this.text, required this.createdAt});

  final String text;
  final DateTime createdAt;
}

@immutable
class SessionState {
  const SessionState({
    this.plan = const SafetyPlan(),
    this.journals = const [],
  });

  final SafetyPlan plan;
  final List<JournalEntry> journals;

  SessionState copyWith({SafetyPlan? plan, List<JournalEntry>? journals}) {
    return SessionState(
      plan: plan ?? this.plan,
      journals: journals ?? this.journals,
    );
  }
}

/// Demo-scoped content store. Lives for the app process only; nothing is
/// written to disk. Production persistence uses the encrypted database.
class SessionStore extends Notifier<SessionState> {
  @override
  SessionState build() => const SessionState();

  void saveSafetyPlan(SafetyPlan plan) {
    state = state.copyWith(plan: plan);
  }

  void addJournal(String text) {
    final trimmed = text.trim();
    if (trimmed.isEmpty) return;
    state = state.copyWith(
      journals: [
        ...state.journals,
        JournalEntry(text: trimmed, createdAt: DateTime.now()),
      ],
    );
  }

  void clear() {
    state = const SessionState();
  }
}

final sessionStoreProvider =
    NotifierProvider<SessionStore, SessionState>(SessionStore.new);
