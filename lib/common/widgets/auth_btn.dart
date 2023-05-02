import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class AuthBtn extends StatelessWidget {
  final String btnTitle;
  final Widget icon;
  final VoidCallback onPressed;
  const AuthBtn({
    required this.btnTitle,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton.icon(
        style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 15,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w600)),
            padding: const EdgeInsets.all(16.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0))),
        onPressed: onPressed,
        icon:icon,
        label: Text(
          btnTitle,
          style: const TextStyle(color: AppColor.textColor),
        ),
      ),
    );
  }
}
