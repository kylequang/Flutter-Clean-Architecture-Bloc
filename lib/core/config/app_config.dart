import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/local/storage/app_storage_manager.dart';
import '../di/di.dart' as di;

class AppConfig {
  AppConfig._();
  static final AppConfig _instance = AppConfig._();
  factory AppConfig.getInstance() {
    return _instance;
  }

  Future<void> init() async {
    await Hive.initFlutter();
    await dotenv.load(fileName: ".env");
    await di.configureInjection();
    await AppStorageManager().initializeHive();
  }
}
