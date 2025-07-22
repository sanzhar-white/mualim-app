import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mualim/core/constants/routes.dart';
import 'package:mualim/features/bottom_navigation/components/layout_scaffold.dart';
import 'package:mualim/features/init/presentation/feature.dart';
import 'package:mualim/features/leaderboard/presentation/feature.dart';
import 'package:mualim/features/main/presentation/feature.dart';
import 'package:mualim/features/practice/presentation/feature.dart';
import 'package:mualim/features/schedule/presentation/feature.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

Widget defaultTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  final fadeAnimation = CurvedAnimation(
    parent: animation,
    curve: Curves.easeOutExpo,
  );
  return FadeTransition(
    opacity: Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animation,
        curve: const Interval(0, 0.65, curve: Curves.easeInOut),
      ),
    ),
    child: ScaleTransition(
      scale: Tween<double>(begin: 0.96, end: 1).animate(fadeAnimation),
      child: child,
    ),
  );
}

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.initPage,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.initPage,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const InitFeature(),
        transitionsBuilder: defaultTransitionBuilder,
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return LayoutScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.mainPage,
              pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const MainFeature(),
                transitionsBuilder: defaultTransitionBuilder,
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.practicePage,
              pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const PracticeFeature(),
                transitionsBuilder: defaultTransitionBuilder,
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.schedulePage,
              pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const ScheduleFeature(),
                transitionsBuilder: defaultTransitionBuilder,
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.leaderboardPage,
              pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const LeaderboardFeature(),
                transitionsBuilder: defaultTransitionBuilder,
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
