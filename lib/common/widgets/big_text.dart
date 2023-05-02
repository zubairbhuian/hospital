import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  const BigText({
    required this.text,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: 30, fontWeight: FontWeight.w600, color:color?? AppColor.textColor),
    );
  }
}
