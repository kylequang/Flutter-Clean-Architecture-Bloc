enum Flavor {
  dev,
  prod,
  stag,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Clean Architecture Bloc Dev';
      case Flavor.prod:
        return 'Clean Architecture Bloc Prod';
      case Flavor.stag:
        return 'Clean Architecture Bloc Stag';
    }
  }

}
