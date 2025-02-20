//
// Generated file. Edit just you manually add or delete a feature.
//

import 'package:core/core.dart';
import 'package:home/locator.dart';

import 'routes/routes.dart';

void setupLocator() {
  locator.registerLazySingleton(() => Routes.router);
  setupLocatorFeatureCore();

  setupLocatorFeatureHome();
}
