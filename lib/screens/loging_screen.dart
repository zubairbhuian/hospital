import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/screens/forget_password_screen.dart';

import 'package:hospital/screens/regestration_screen.dart';
import 'package:hospital/utils/app_color.dart';

import '../widgets/custom_appbar_shape.dart';
import 'home_screen.dart';

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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
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
                    Image.asset('images/head.png',
                        width: 52.w, height: 54.53.h),
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
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
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
                      height: 20,
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
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: AppColor.borderColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: AppColor.green)),
                          // enabledBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: Color.fromARGB(255, 94, 94, 94))),
                          // focusedBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.blue)),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: AppColor.textColorLite, fontSize: 14)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordControter,
                      obscureText: obscureText,
                      style: const TextStyle(
                        color: AppColor.textColor,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: AppColor.borderColor)),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                          Get.off(() => const ForgotPasswordScreen());
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              showDialog(
                                  context: context,
                                  builder: (contex) => const Center(
                                        child: CircularProgressIndicator(),
                                      ));
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _emailControter.text.trim(),
                                      password: _passwordControter.text.trim());
                            } on FirebaseAuthException catch (e) {
                              Get.snackbar(
                                  snackPosition: SnackPosition.BOTTOM,
                                  "Err",
                                  "${e.message}");
                            }
                            // navigatorKey.currentState!
                            //     .popUntil((route) => route.isFirst);
                          }
                          if (FirebaseAuth.instance.currentUser!.email !=
                              null) {
                            Get.off(() => const HomeScreen());
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        child: const Center(child: Text('Sign in'))),
                    SizedBox(
                      height: 150.h,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Don’t have an account?  ',
                            style: const TextStyle(
                                color: AppColor.black, fontSize: 15),
                            children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.off(() => const RegestrationScreen());
                                },
                              text: ' Create new',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.blue))
                        ]))
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
