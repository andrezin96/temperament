import 'package:get_storage/get_storage.dart';

abstract class LocalStorage {
  Future<void> write(String key, dynamic value);
  void remove(String key);
  T? read<T>(String key);
}

class _GetStorageImpl implements LocalStorage {
  final GetStorage _getStorage = GetStorage();

  @override
  T? read<T>(String key) {
    return _getStorage.read<T>(key);
  }

  @override
  void remove(String key) {
    _getStorage.remove(key);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    try {
      return _getStorage.write(key, value);
    } catch (e) {
      rethrow;
    }
  }
}

final LocalStorage localStorage = _GetStorageImpl();
