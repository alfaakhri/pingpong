import 'package:core/core.dart';
import 'package:pokemon/main/main_page.dart';

List<RouteBase> mainRoutes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) =>
        MainPage(navigationShell: navigationShell),
    branches: [],
  ),
];
