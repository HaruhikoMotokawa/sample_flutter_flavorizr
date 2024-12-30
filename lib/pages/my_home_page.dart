import 'package:flutter/material.dart';

import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Flavor.title),
      ),
      body: Center(
        child: Text(
          'Hello ${Flavor.title}',
        ),
      ),
    );
  }
}
