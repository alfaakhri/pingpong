import 'package:core/core.dart';
import 'package:pokemon/main/main_page.dart';

import 'home_routes.dart';

List<RouteBase> mainRoutes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) =>
        MainPage(navigationShell: navigationShell),
    branches: [
      ...homeRoutes,
    ],
  ),
];
