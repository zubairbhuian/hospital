import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/screens/loging_screen.dart';
import 'package:hospital/utils/app_color.dart';
import 'package:hospital/widgets/custom_btn.dart';

import '../widgets/custom_appbar_shape.dart';
import 'main_screen.dart';

class RegestrationScreen extends StatefulWidget {
  const RegestrationScreen({Key? key, required}) : super(key: key);

  @override
  State<RegestrationScreen> createState() => _RegestrationScreenState();
}

class _RegestrationScreenState extends State<RegestrationScreen> {
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
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        TextFormField(
                          style: const TextStyle(
                            color: AppColor.textColor,
                          ),
                          controller: _emailControter,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: AppColor.textColorLite,
                                size: 25,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.borderColor)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.green)),
                              hintText: 'Email',
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
                        TextFormField(
                          controller: _passwordControter,
                          obscureText: obscureText,
                          style: const TextStyle(
                            color: AppColor.textColor,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: AppColor.textColorLite,
                                size: 25,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.borderColor)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.green)),
                              hintText: 'Password',
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
                        TextFormField(
                          controller: _repasswordControter,
                          obscureText: obscureText,
                          style: const TextStyle(
                            color: AppColor.textColor,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
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
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.borderColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.green)),
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
                        CustomBtn(title: 'Sign Up', onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // Process data.
                                try {
                                  await FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(
                                          email: _emailControter.text.trim(),
                                          password:
                                              _passwordControter.text.trim());
                                } on FirebaseAuthException catch (e) {
                                  print(e);
                                  // CustromSnackber.showSnackber(e.message);
                                  Get.snackbar(
                                      snackPosition: SnackPosition.BOTTOM,
                                      'err',
                                      "${e.message}");
                                }
                              }
                              if (FirebaseAuth.instance.currentUser!.email !=
                                  null) {
                                Get.off(() => const MainScreen());
                              }
                            },),
        
                        const SizedBox(
                          height: 14,
                        ),
                        SizedBox(
                          height: 150.h,
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 85,
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
                            Get.off(() => const LoginScreen());
                          },
                        text: 'Log in',
                        style: const TextStyle(color: AppColor.green))
                  ])),
            ),
          )
        ],
      ));
}
