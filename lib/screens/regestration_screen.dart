import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/utils/app_color.dart';

import '../widgets/custom_appbar_shape.dart';

class RegestrationScreen extends StatefulWidget {
  final VoidCallback onClickedSignIn;
  const RegestrationScreen({Key? key, required this.onClickedSignIn})
      : super(key: key);

  @override
  State<RegestrationScreen> createState() => _RegestrationScreenState();
}

class _RegestrationScreenState extends State<RegestrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailControter = TextEditingController();
  final _passwordControter = TextEditingController();
  final _repasswordControter = TextEditingController();
  bool obscureText = true;
  bool reobscureText = true;

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
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Center(
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
                        const Text('Full Name'),
                        TextFormField(
                          style: const TextStyle(
                            color: AppColor.textColor,
                          ),
                          // controller: _emailControter,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              // prefixIcon: Icon(
                              //   Icons.email,
                              //   color: Color.fromARGB(255, 114, 114, 114),
                              //   size: 25,
                              // ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.borderColor, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide:
                                      BorderSide(color: AppColor.borderColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide:
                                      BorderSide(color: AppColor.green)),
                              // hintText: 'Type Phone',
                              hintStyle: TextStyle(
                                  color: AppColor.textColorLite, fontSize: 14)),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (String? value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)")
                                    .hasMatch(value)) {
                              return 'Enter your valid Email';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 99, 99, 99),
                          ),
                          controller: _emailControter,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 114, 114, 114),
                                size: 25,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 90, 90, 90))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 119, 119, 119),
                                  fontSize: 14)),
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
                            color: Color.fromARGB(255, 109, 109, 109),
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 114, 114, 114),
                                size: 25,
                              ),
                              suffixIcon: obscureText == true
                                  ? IconButton(
                                      onPressed: () {
                                        obscureText = false;
                                        setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.blue,
                                      ))
                                  : IconButton(
                                      onPressed: () {
                                        obscureText = true;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.visibility_off)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 119, 119, 119))),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 122, 122, 122),
                                  fontSize: 14)),
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
                          obscureText: reobscureText,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 110, 110, 110),
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 61, 61, 61),
                                size: 25,
                              ),
                              suffixIcon: reobscureText == true
                                  ? IconButton(
                                      onPressed: () {
                                        reobscureText = false;
                                        setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.blue,
                                      ))
                                  : IconButton(
                                      onPressed: () {
                                        reobscureText = true;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.visibility_off)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 138, 138, 138))),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 134, 134, 134),
                                  fontSize: 14)),
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
                        ElevatedButton(
                            onPressed: () async {
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
                            },
                            child: const Center(child: Text('Sign Up'))),
                        const SizedBox(
                          height: 14,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Already have an account?  ',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 143, 143, 143),
                                    fontSize: 15),
                                children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = widget.onClickedSignIn,
                                  text: 'Log in',
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: AppColor.green))
                            ]))
                      ],
                    ),
                  ),
                )),
          ),
        ),
      );
}
