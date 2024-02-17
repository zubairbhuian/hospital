// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../core/config/color.dart';
import '../core/config/fonts.dart';
import '../core/config/style.dart';


class PrimaryBtn extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final Widget child;
  final Function()? onPressed;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? elevation;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final BorderSide? side;

  const PrimaryBtn({
    Key? key,
    this.color,
    this.textColor,
    required this.onPressed,
    this.borderRadius,
    this.style,
    this.height,
    this.width,
    this.elevation,
    this.padding,
    required this.child, this.side,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(boxShadow: [kbtnShadow]),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 1,
          textStyle: style ?? kLabelLarge.copyWith(color: textColor ?? kWhite),
          disabledBackgroundColor: kDisabledColor,
          disabledForegroundColor: kDisabledTextColor,
          backgroundColor: color ?? kPrimaryColor,
          foregroundColor: textColor ?? kWhite,
          padding:
              padding ?? const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
          ),
          // ****** Border color *******
          side:side
          // const BorderSide(
          //   color: kPrimaryColor,
          //   width: 0,
          // ),
        ),
        child: child,
      ),
    );
  }
}

class OutLineBtn extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final TextStyle? textStyle;

  const OutLineBtn(
      {super.key,
      this.backgroundColor,
      this.foregroundColor,
      this.onPressed,
      this.borderRadius,
      this.padding,
      this.height,
      this.width,
      this.textStyle,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: padding ??
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            foregroundColor: foregroundColor ?? kPrimaryColor,
            side: const BorderSide(width: 1, color: kPrimaryColor),
            backgroundColor: backgroundColor ?? Colors.transparent,
            disabledForegroundColor: kWhite,
            disabledBackgroundColor: kDisabledColor,
            textStyle: textStyle ??
                const TextStyle(
                    color: kRed,
                    fontFamily: Fonts.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(
            //       borderRadius ?? 16.r), // Change the border radius value
            // ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}

class GradientBtn extends StatelessWidget {
  const GradientBtn({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        padding: const EdgeInsets.symmetric(
          vertical: 13,
        ),
        decoration: BoxDecoration(
          gradient: onTap == null
              ? const LinearGradient(
                  colors: [
                    Color(0xffC2C2C2),
                    Color(0xffC2C2C2)
                  ], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : const LinearGradient(
                  colors: [
                    Color(0xff9F9F9F),
                    Color(0xff9F9F9F)
                  ], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius:
              BorderRadius.circular(50), // Optional: Add border radius
        ),
        child: Center(
          child: Text(
            text,
            style: kLabelMedium.copyWith(color: kWhite),
          ),
        ),
      ),
    );
  }
}
