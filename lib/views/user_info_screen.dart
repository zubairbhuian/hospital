
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/views/loging_screen.dart';
import 'package:hospital/utils/app_color.dart';
import 'package:hospital/widgets/custom_btn.dart';

import '../widgets/auth_btn.dart';
import '../widgets/custom_appbar_shape.dart';


class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key, required}) : super(key: key);

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailControter = TextEditingController();
  final _passwordControter = TextEditingController();
  final _repasswordControter = TextEditingController();
  bool obscureText = true;

  @override
  void dispose() {
    _emailControter.dispose();
    _passwordControter.dispose();
    _repasswordControter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColor.bgColorOne,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 130,
          backgroundColor: Colors.transparent,
          leading: Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
                onPressed: () {
                  Get.off(() => const LoginScreen());
                },
              )),
          flexibleSpace: ClipPath(
            clipper: CustomAppbarShape(),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColor.green, AppColor.amber],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create Account",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.white),
                      )),
                  Text("Enter info registration",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      )),
                ],
              ),
            ),
          )),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Email',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  controller: _emailControter,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' Type Email',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return 'Enter your valid Email';
                    }
                    return null;
                  },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: EdgeInsets.only(bottom: 5, top: 20.h),
                  child: Text(
                    'Password',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _passwordControter,
                  obscureText: obscureText,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' Type password',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Create a new password";
                    } else if (value.length < 6) {
                      return "Your minimum password should be 6 ";
                    } else {
                      return null;
                    }
                  },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: EdgeInsets.only(bottom: 5, top: 20.h),
                  child: Text(
                    'Re-password',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _repasswordControter,
                  obscureText: obscureText,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      suffixIcon: obscureText == true
                          ? IconButton(
                              onPressed: () {
                                obscureText = false;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.visibility_off,
                                color: AppColor.textColorLite,
                              ))
                          : IconButton(
                              onPressed: () {
                                obscureText = true;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                              )),
                      contentPadding: const EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Re-password";
                    } else if (_repasswordControter.text !=
                        _passwordControter.text) {
                      return "Password isnot match";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomBtn(
                  title: 'Sign Up',
                  onPressed: () async {
                    
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    AuthBtn(
                        btnTitle: 'facebook',
                        icon: const FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Color(0xff3B5999),
                          size: 17,
                        ),
                        onPressed: () {}),
                    const SizedBox(
                      width: 10,
                    ),
                    AuthBtn(
                        btnTitle: 'Google',
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Color(0xffDD4B39),
                          size: 17,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 40.h),
        SizedBox(
          height: 50,
          child: Center(
            child: RichText(
                text: TextSpan(
                    text: 'Already have an account?  ',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 143, 143, 143),
                        fontSize: 15),
                    children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Get.off(() => const LoginScreen());
                        },
                      text: 'Log in',
                      style: const TextStyle(color: AppColor.green))
                ])),
          ),
        )
      ]));
}
