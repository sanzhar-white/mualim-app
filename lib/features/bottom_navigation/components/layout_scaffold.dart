import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mualim/features/bottom_navigation/models/destination_model.dart';
import 'package:mualim/generated/l10n.dart';

class LayoutScaffold extends StatelessWidget {
  const LayoutScaffold({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final s = S.of(context);
    final destinations = [
      Destination(
        label: s.main_menu,
        imageUrl: 'assets/images/nav_icons/main_menu.png',
      ),
      Destination(
        label: s.practice,
        imageUrl: 'assets/images/nav_icons/practice.png',
      ),
      Destination(
        label: s.schedule,
        imageUrl: 'assets/images/nav_icons/schedule.png',
      ),
      Destination(
        label: s.leaderboard,
        imageUrl: 'assets/images/nav_icons/leaderboard.png',
      ),
    ];
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: screenSize.height * 0.07,
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: destinations.asMap().entries.map((entry) {
            final index = entry.key;
            final destination = entry.value;
            final isSelected = index == navigationShell.currentIndex;
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => _onTap(index),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset(
                      destination.imageUrl,
                      key: ValueKey<bool>(isSelected),
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                      width: screenSize.width * 0.06,
                      height: screenSize.width * 0.06,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.005),
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: TextStyle(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                      fontSize: screenSize.width * 0.03,
                    ),
                    child: Text(destination.label),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
