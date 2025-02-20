import 'package:core/core.dart';
import 'package:home/home/presentation/pages/home_page.dart';

List<StatefulShellBranch> homeRoutes = [
  StatefulShellBranch(
    routes: [
      GoRoute(
        path: joinRoutes([ConstantRoutes.home]),
        builder: (context, state) => const HomePage(),
      ),
    ],
  ),
];
