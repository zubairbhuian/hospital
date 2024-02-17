import 'package:flutter/material.dart';

extension IntExtensions on int? {
  Widget get height => SizedBox(height: this?.toDouble());
  Widget get width => SizedBox(width: this?.toDouble());
}