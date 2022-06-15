import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class CustomBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomBtn({
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.inter(
                textStyle:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            padding: const EdgeInsets.all(14.5),
            primary: AppColor.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
        child: Center(child: Text(title)));
  }
}
