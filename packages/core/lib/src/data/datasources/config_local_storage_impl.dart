import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/local_storage_repository.dart';

@Named('config')
@LazySingleton(as: LocalStorageRepository)
class ConfigLocalStorageImpl implements LocalStorageRepository {
  final sharedPrefs = SharedPreferencesAsync();

  @override
  Future<void> deleteKey({required String key}) async {
    await sharedPrefs.remove(key);
  }

  @override
  Future<dynamic> readKey(String key) async {
    return await sharedPrefs.getString(key);
  }

  @override
  Future<void> saveKey({required String key, required String value}) async {
    await sharedPrefs.setString(key, value);
  }
}
