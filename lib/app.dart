import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';
import 'pages/my_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _flavorBanner(
        child: MyHomePage(),
        show: kDebugMode,
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.topStart,
              message: F.name,
              color: switch (F.appFlavor) {
                // withOpacityはFlutter3.27.0でDeprecatedになったのでwithValuesを使う
                FlavorType.dev => Colors.yellow.withValues(alpha: 0.6),
                FlavorType.prod => Colors.green.withValues(alpha: 0.6),
                FlavorType.stg => Colors.blue.withValues(alpha: 0.6),
                _ => Colors.grey.withValues(alpha: 0.6),
              },
              textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : Container(
              child: child,
            );
}
