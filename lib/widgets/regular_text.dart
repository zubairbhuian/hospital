import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/utils/app_color.dart';

class RegularText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;

  const RegularText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color:color?? AppColor.textColor,
              fontSize:fontSize?? 15,
              fontWeight:fontWeight?? FontWeight.w400)));
}
