import 'package:flutter/material.dart';

enum FlavorType {
  prod,
  stg,
  dev,
}

class Flavor {
  static FlavorType? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static bool get isProd => appFlavor == FlavorType.prod;
  static bool get isStg => appFlavor == FlavorType.stg;
  static bool get isDev => appFlavor == FlavorType.dev;

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

  static Color get color {
    switch (appFlavor) {
      case FlavorType.prod:
        return Colors.green.withValues(alpha: 0.6);
      case FlavorType.stg:
        return Colors.blue.withValues(alpha: 0.6);
      case FlavorType.dev:
        return Colors.yellow.withValues(alpha: 0.6);
      default:
        // withOpacityはFlutter3.27.0以降で非推奨になったので、withAlphaを使う
        return Colors.grey.withValues(alpha: 0.6);
    }
  }
}
