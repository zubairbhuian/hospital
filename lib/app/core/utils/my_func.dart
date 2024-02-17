import 'package:flutter/material.dart';

class MyFunc {
  static MaterialColor createMaterialColor(Color color) {
    List<int> strengths = <int>[
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ];
    Map<int, Color> swatch = <int, Color>{};

    for (int i = 0; i < 10; i++) {
      final int strength = strengths[i];
      final double blend = 1 - (i / 10);
      swatch[strength] = Color.fromRGBO(
        color.red,
        color.green,
        color.blue,
        blend,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
