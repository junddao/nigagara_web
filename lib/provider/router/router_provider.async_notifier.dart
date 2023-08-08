import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../lib.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

class Routes {
  // 1 depth

  static const home = '/home';
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: Routes.home,
    routes: _routes,
    redirect: (context, state) async {
      return null;
    },
  );
});

final _routes = <RouteBase>[
  GoRoute(
    path: Routes.home,
    name: Routes.home,
    pageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: const PageHome(),
      );
    },
  ),
];
