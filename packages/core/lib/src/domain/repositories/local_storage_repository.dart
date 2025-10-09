//The method is used to interact with local storage
abstract class LocalStorageRepository {
  Future<dynamic> readKey(String key);

  Future<void> saveKey({required String key, required String value});

  Future<void> deleteKey({required String key});
}
