import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../core/config/color.dart';

class GOTOX extends StatelessWidget {
  final String text1;
  final String text2;
  final Function()? onTap;
  const GOTOX({super.key, required this.text1, required this.text2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: text1,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: kTextColor,
          ),
          children: <TextSpan>[
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = onTap,
              text: text2,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
