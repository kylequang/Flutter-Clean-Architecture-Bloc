import '../config/app_config.dart';

class AppInitializer {
  AppInitializer(this._applicationConfig);

  final AppConfig _applicationConfig;

  Future<void> init() async {
    await _applicationConfig.init();
  }
}
