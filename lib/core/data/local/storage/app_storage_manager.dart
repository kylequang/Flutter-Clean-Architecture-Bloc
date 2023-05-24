import 'package:flutter_boilerplate_clean_architecture_bloc/core/data/local/storage/app_storage_repository.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AppStorageManager {
  static final AppStorageManager _instance = AppStorageManager._internal();

  factory AppStorageManager() {
    return _instance;
  }

  AppStorageManager._internal();
  static const String _boxName = 'appBox';

  Future<void> initializeHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    await openBox();
  }

  Future<void> openBox() async {
    await Hive.openBox(_boxName);
  }

  Future<Box> getHiveBox() async {
    if (!Hive.isBoxOpen(_boxName)) {
      await openBox();
    }
    return Hive.box(_boxName);
  }

  Future<void> closeBox() async {
    if (Hive.isBoxOpen(_boxName)) {
      final box = await getHiveBox();
      await box.close();
    }
  }

  Future<void> saveData(String key, dynamic value) async {
    final box = await getHiveBox();
    await box.put(key, value);
  }

  Future<dynamic> loadData(String key) async {
    final box = await getHiveBox();
    return box.get(key);
  }

  AppStorageRepositoryImpl get appStorageRepositoryImpl =>
      AppStorageRepositoryImpl(myBox: Hive.box(_boxName));
}
