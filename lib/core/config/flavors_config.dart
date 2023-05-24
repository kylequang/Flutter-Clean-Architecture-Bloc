import '../enums/flavors.dart';

class FlavorConfig {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Clean Architecture Bloc Dev';
      case Flavor.prod:
        return 'Clean Architecture Bloc Prod';
      case Flavor.stag:
        return 'Clean Architecture Bloc Stag';
      default:
        return 'title';
    }
  }
}
