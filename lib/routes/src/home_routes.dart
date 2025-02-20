import 'package:core/core.dart';
import 'package:home/home/presentation/pages/home_page.dart';

List<RouteBase> homeRoutes = [
  GoRoute(
    path: joinRoutes([ConstantRoutes.home]),
    builder: (context, state) => const HomePage(),
  ),
];
