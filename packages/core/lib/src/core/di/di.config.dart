// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/src/core/navigation/app_navigator.dart' as _i738;
import 'package:core/src/core/navigation/app_navigator_impl.dart' as _i187;
import 'package:core/src/data/datasources/config_local_storage_impl.dart'
    as _i65;
import 'package:core/src/data/datasources/data_local_storage_impl.dart'
    as _i492;
import 'package:core/src/domain/repositories/local_storage_repository.dart'
    as _i926;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i738.AppNavigator>(() => _i187.AppNavigatorImpl());
    gh.lazySingleton<_i926.LocalStorageRepository>(
      () => _i65.ConfigLocalStorageImpl(),
      instanceName: 'config',
    );
    gh.lazySingleton<_i926.LocalStorageRepository>(
      () => _i492.DataLocalStorageImpl(),
      instanceName: 'cache',
    );
    return this;
  }
}
