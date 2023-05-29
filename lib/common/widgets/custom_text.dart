import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor/common/utils/app_color.dart';

//    ####### Small Text ########

class ExtraSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const ExtraSmallText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
              color: color ?? AppColor.textColor,
              fontSize: fontSize ?? 13.sp,
              fontWeight: fontWeight ?? FontWeight.w400));
}

//    ####### Small Text ########

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const SmallText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style:TextStyle(
              color: color ?? AppColor.textColor,
              fontSize: fontSize ?? 14.sp,
              fontWeight: fontWeight ?? FontWeight.w400));
}

//    ####### Regular Text ########

class RegularText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const RegularText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
              color: color ?? AppColor.textColor,
              fontSize: fontSize ?? 15.sp,
              fontWeight: fontWeight ?? FontWeight.w400));
}

//   ####### Big Text ########

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const BigText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style:TextStyle(
              color: color ?? AppColor.textColor,
              fontSize: fontSize ?? 30,
              fontWeight: fontWeight ?? FontWeight.w600));
}

//    ####### ExtraBig Text ########
class ExtraBigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const ExtraBigText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
              color: color ?? AppColor.textColor,
              fontSize: fontSize ?? 30,
              fontWeight: fontWeight ?? FontWeight.w600));
}
