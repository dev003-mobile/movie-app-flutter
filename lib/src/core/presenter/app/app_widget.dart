import 'package:flutter/material.dart';

import '../../../modules/carro_module/screens/carro_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: CarroScreen(),
      themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
    );
  }
}