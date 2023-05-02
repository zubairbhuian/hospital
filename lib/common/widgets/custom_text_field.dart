// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  const CustomTextField({
    Key? key,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.label,
    this.keyboardType,
    this.validator,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText ?? false,
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColor.textColor)),
        keyboardType: keyboardType,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 15.5, top: 15.5),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                borderSide: BorderSide(color: AppColor.borderColor)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                borderSide: BorderSide(color: AppColor.green)),
            hintText: hintText,
            label: label,
            hintStyle:
                const TextStyle(color: AppColor.textColorLite, fontSize: 14)),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      );
}
