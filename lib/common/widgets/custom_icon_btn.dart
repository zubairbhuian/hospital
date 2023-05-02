import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class CustomIconBtn extends StatelessWidget {
  final String text;
  final Color? color;
  final dynamic icon;
  final VoidCallback onPressed;
  const CustomIconBtn(
      {required this.text, required this.icon,required this.onPressed, this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              textStyle: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400)),
              padding: const EdgeInsets.all(16),
              primary: color ?? AppColor.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0))),
          icon: FaIcon(
            icon,
            size: 18,
          ),
          label: Text(text),
          onPressed: onPressed,
        ),
      );
}
