import 'package:injectable/injectable.dart';

import '../../domain/repositories/local_storage_repository.dart';

@Named('cache')
@LazySingleton(as: LocalStorageRepository)
class DataLocalStorageImpl implements LocalStorageRepository {
  @override
  Future<void> deleteKey({required String key}) async {
    // TODO: implement deleteKey
    throw UnimplementedError();
  }

  @override
  Future<dynamic> readKey(String key) async {
    // TODO: implement readKey
    throw UnimplementedError();
  }

  @override
  Future<void> saveKey({required String key, required dynamic value}) async {
    // TODO: implement saveKey
    throw UnimplementedError();
  }
}
