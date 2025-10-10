import 'package:core/core.dart';
import 'package:main_app/core/navigation/navigation_config.dart';

final getIt = GetIt.instance;

void configDependencies() {
  getIt.registerLazySingleton<GoRouter>(() => goRouterConfig);
}
