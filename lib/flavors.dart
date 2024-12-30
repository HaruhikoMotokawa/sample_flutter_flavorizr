enum FlavorType {
  prod,
  stg,
  dev,
}

class F {
  static FlavorType? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case FlavorType.prod:
        return 'Sample Flutter Flavorizr';
      case FlavorType.stg:
        return 'Sample Flutter Flavorizr Stg';
      case FlavorType.dev:
        return 'Sample Flutter Flavorizr Dev';
      default:
        return 'title';
    }
  }
}
