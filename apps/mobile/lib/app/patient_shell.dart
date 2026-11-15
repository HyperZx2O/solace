import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../design/tokens.g.dart';
import 'modal.dart';

/// Chrome shared by every signed-in patient screen: bottom navigation plus the
/// always-visible fast exit. On wide layouts (≥640 dp) a NavigationRail replaces
/// the bottom bar when the current route is one of the exact tab routes.
class PatientShell extends StatelessWidget {
  const PatientShell({super.key, required this.child});

  final Widget child;

  static const _tabs = <_Tab>[
    _Tab('/home', 'Home', Icons.spa_outlined, Icons.spa),
    _Tab('/journal/recovery', 'Journal', Icons.edit_note_outlined, Icons.edit_note),
    _Tab('/history/mood', 'History', Icons.insights_outlined, Icons.insights),
    _Tab('/settings', 'Settings', Icons.tune_outlined, Icons.tune),
  ];

  int _indexFor(String location) {
    return _tabs.indexWhere((t) => t.path == location);
  }

  static bool _isTab(String location) => _tabs.any((t) => t.path == location);

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    final isTab = _isTab(location);
    final wide = MediaQuery.of(context).size.width >= 640;

    // Wide layout with tab route → show NavigationRail + centered content cap.
    if (wide && isTab) {
      final index = _indexFor(location);
      return Scaffold(
        backgroundColor: hero_base,
        body: Row(
          children: [
            _InertWhenModal(
              child: NavigationRail(
                selectedIndex: index,
                onDestinationSelected: (i) {
                  HapticFeedback.selectionClick();
                  context.go(_tabs[i].path);
                },
                labelType: NavigationRailLabelType.all,
                backgroundColor: hero_base,
                destinations: [
                  for (final tab in _tabs)
                    NavigationRailDestination(
                      icon: Icon(tab.icon),
                      selectedIcon: Icon(tab.selectedIcon),
                      label: Text(tab.label),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 640),
                  child: child,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Compact layout: use bottom navigation bar for tab routes; hide rail.
    return Scaffold(
      backgroundColor: hero_base,
      body: child,
      bottomNavigationBar: isTab
          ? _InertWhenModal(
              child: NavigationBar(
                selectedIndex: _indexFor(location),
                onDestinationSelected: (index) {
                  HapticFeedback.selectionClick();
                  context.go(_tabs[index].path);
                },
                destinations: [
                  for (final tab in _tabs)
                    NavigationDestination(
                      icon: Icon(tab.icon),
                      selectedIcon: Icon(tab.selectedIcon),
                      label: tab.label,
                    ),
                ],
              ),
            )
          : null,
    );
  }
}

/// Makes its child untappable and dimmed while a patient-space modal is open.
class _InertWhenModal extends StatelessWidget {
  const _InertWhenModal({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: modalOpen,
      builder: (context, depth, _) {
        final blocked = depth > 0;
        return IgnorePointer(
          ignoring: blocked,
          child: AnimatedOpacity(
            opacity: blocked ? 0.35 : 1,
            duration: const Duration(milliseconds: 160),
            child: child,
          ),
        );
      },
    );
  }
}

class _Tab {
  const _Tab(this.path, this.label, this.icon, this.selectedIcon);

  final String path;
  final String label;
  final IconData icon;
  final IconData selectedIcon;
}