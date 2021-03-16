import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocalStorage {
  FlutterSecureStorage storage = new FlutterSecureStorage();

  Future<dynamic> getData(String key) async {
    return await storage.read(key: key);
  }

  Future<void> writeData(String key, dynamic value) async =>
      await storage.write(key: key, value: value);
}
