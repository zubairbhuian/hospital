import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/utils/app_color.dart';
import '../../common/widgets/auth_btn.dart';
import '../../common/widgets/custom_appbar_shape.dart';
import '../../common/widgets/custom_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailControter = TextEditingController();
  final _passwordControter = TextEditingController();
  bool obscureText = true;

  @override
  void dispose() {
    _emailControter.dispose();
    _passwordControter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColor.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: const SizedBox(height: 10),
          elevation: 0.0,
          toolbarHeight: 130,
          backgroundColor: Colors.transparent,
          flexibleSpace: ClipPath(
            clipper: CustomAppbarShape(),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColor.green, AppColor.amber],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/head.png', width: 52.w, height: 54.53.h),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dementia-Patients",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColor.white),
                          )),
                      Text("Support To Home",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColor.white),
                          )),
                    ],
                  )
                ],
              ),
            ),
          )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Welcome Back!',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      'You will get best quality health care service with the low cost',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grayLite),
                      )),
                  const SizedBox(
                    height: 28,
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
                        contentPadding:
                            EdgeInsets.only(bottom: 15.5, top: 15.5),
                        prefixIcon: Icon(
                          Icons.email,
                          color: AppColor.textColorLite,
                          size: 25,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            borderSide:
                                BorderSide(color: AppColor.borderColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide(color: AppColor.green)),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            color: AppColor.textColorLite, fontSize: 14)),
                  ),
                  const SizedBox(
                    height: 16,
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
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(bottom: 15.5, top: 15.5),
                        prefixIcon: const Icon(
                          Icons.lock,
                          // Icons.remove_red_eye,
                          color: AppColor.textColorLite,
                          size: 25,
                        ),
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
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            borderSide:
                                BorderSide(color: AppColor.borderColor)),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide(color: AppColor.green)),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            color: AppColor.textColorLite, fontSize: 14)),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 100.sw,
                    child: GestureDetector(
                      child: const Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: AppColor.green, fontSize: 15),
                      ),
                      onTap: () {
                        // Get.off(() => const ForgotPasswordScreen());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomBtn(
                    onPressed: () async {},
                    title: 'Sign in',
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
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 60.h,
            child: Center(
              child: RichText(
                  text: TextSpan(
                      text: 'Don’t have an account?  ',
                      style:
                          const TextStyle(color: AppColor.black, fontSize: 15),
                      children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Get.off(() => const RegestrationScreen());
                          },
                        text: ' Create new',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, color: AppColor.blue))
                  ])),
            ),
          )
        ],
      ));
}
