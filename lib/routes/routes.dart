import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon/routes/src/home_routes.dart';

abstract class Routes {
  static GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: kDebugMode,
    initialLocation: ConstantRoutes.splash,
    routes: [...homeRoutes],
  );
}
