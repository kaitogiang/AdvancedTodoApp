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
  Future<void> saveKey({required String key, required dynamic value}) async {
    if (value is String) {
      await sharedPrefs.setString(key, value.toString());
    } else if (value is double) {
      await sharedPrefs.setDouble(key, value.toDouble());
    } else if (value is int) {
      await sharedPrefs.setInt(key, value.toInt());
    } else if (value is bool) {
      await sharedPrefs.setBool(key, value);
    } else {
      await sharedPrefs.setStringList(key, value);
    }
  }
}
