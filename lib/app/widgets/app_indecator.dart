import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../core/config/color.dart';

class AppIndecator extends StatelessWidget {
  final double? value;
  const AppIndecator({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return  const SpinKitFadingCircle(
      color: kPrimaryColor,
      size: 45.0,
    );
  }
}
