import 'package:hive/hive.dart';

import '../../../constants/key_storage.dart';

abstract class AppStorageRepository {
  String? getDeviceToken();
  bool getIsFirstLogin();
  bool getIsFirstLaunchApp();
  bool getIsDarkMode();
  String? getLanguageCode();

  Future saveDeviceToken(String deviceToken);
  Future saveIsFirstLogin(bool isFirstLogin);
  Future saveIsFirstLaunchApp(bool isFirstLaunchApp);
  Future saveIsDarkMode(bool isDarkMode);
  Future<bool> saveLanguageCode(String languageCode);
}

class AppStorageRepositoryImpl implements AppStorageRepository {
  final Box myBox;
  AppStorageRepositoryImpl({required this.myBox});

  @override
  String? getDeviceToken() {
    return myBox.get(KeyStorage.accessTokenKey);
  }

  @override
  bool getIsDarkMode() {
    return myBox.get(KeyStorage.darkThemeKey) ?? false;
  }

  @override
  bool getIsFirstLaunchApp() {
    return myBox.get(KeyStorage.isFirstLaunchAppKey) ?? true;
  }

  @override
  bool getIsFirstLogin() {
    return myBox.get(KeyStorage.isFirstLoginKey) ?? true;
  }

  @override
  String getLanguageCode() {
    return myBox.get(KeyStorage.languageKey) ?? "en";
  }

  @override
  Future saveDeviceToken(String deviceToken) {
    return myBox.put(KeyStorage.accessTokenKey, deviceToken);
  }

  @override
  Future saveIsDarkMode(bool isDarkMode) {
    throw UnimplementedError();
  }

  @override
  Future saveIsFirstLaunchApp(bool isFirstLaunchApp) async {
    await myBox.put(KeyStorage.isFirstLaunchAppKey, isFirstLaunchApp);
  }

  @override
  Future saveIsFirstLogin(bool isFirstLogin) async {
    await myBox.put(KeyStorage.isFirstLoginKey, isFirstLogin);
  }

  @override
  Future<bool> saveLanguageCode(String languageCode) {
    throw UnimplementedError();
  }
}
