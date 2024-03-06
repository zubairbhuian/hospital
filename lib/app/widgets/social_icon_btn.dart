import 'package:flutter/material.dart';
import 'package:hospital/app/core/config/color.dart';

class SocialIconBtn extends StatelessWidget {
  final String btnTitle;
  final Widget icon;
  final void Function()? onPressed;
  const SocialIconBtn({
    required this.btnTitle,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: kDisabledColor),
            textStyle: const TextStyle(
                fontSize: 15, color: kTextColor, fontWeight: FontWeight.w600),
            padding: const EdgeInsets.all(16.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0))),
        onPressed: onPressed,
        icon: icon,
        label: Text(
          btnTitle,
          style: const TextStyle(color: kTextColor),
        ),
      ),
    );
  }
}
