import 'package:flutter/material.dart';

import '../core/config/color.dart';
import '../core/config/style.dart';

class DividerText extends StatelessWidget {
  final String text;
  const DividerText(this.text,{super.key });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
          child: Divider(
        thickness: .7,
        color: kDisabledTextColor,
      )),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Text(
          text,
          style: kBodyLarge,
        ),
      ),
      const Expanded(
        child: Divider(
          thickness: .7,
          color: kDisabledTextColor,
        ),
      ),
    ]);
  }
}
