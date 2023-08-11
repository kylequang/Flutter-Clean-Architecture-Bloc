import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    // _settingSystemUI()
  }

  //show hide bottom navigation bar of device
  void _settingSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.top,
    ]);
    SystemChrome.setSystemUIChangeCallback((
        bool systemOverlaysAreVisible) async {
      if (systemOverlaysAreVisible) {
        Future<void>.delayed(
          const Duration(seconds: 3),
              () =>
              SystemChrome.setEnabledSystemUIMode(
                SystemUiMode.manual,
                overlays: <SystemUiOverlay>[
                  SystemUiOverlay.top,
                ],
              ),
        );
      }
    });

    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
