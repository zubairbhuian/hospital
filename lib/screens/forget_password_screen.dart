import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/screens/loging_screen.dart';
import 'package:hospital/widgets/custom_btn.dart';

import '../utils/app_color.dart';
import '../widgets/custom_appbar_shape.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailControter = TextEditingController();

  @override
  void dispose() {
    _emailControter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Container(
                padding: const EdgeInsets.only(bottom: 60),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                  onPressed: () {
                    Get.off(() => const LoginScreen());
                  },
                )),
            centerTitle: true,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Reset Password",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.white),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                          "Select which contact details should we use to reset your password",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColor.white),
                          )),
                    ),
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
                        TextFormField(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 125, 125, 125),
                          ),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide:
                                      BorderSide(color: AppColor.borderColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide:
                                      BorderSide(color: AppColor.green)),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: AppColor.textColorLite, fontSize: 14)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBtn(
                          title: 'Reset Password',
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              try {
                                showDialog(
                                    context: context,
                                    builder: (contex) => const Center(
                                          child: CircularProgressIndicator(),
                                        ));

                                await FirebaseAuth.instance
                                    .sendPasswordResetEmail(
                                        email: _emailControter.text.trim());
                                Get.snackbar(
                                    snackPosition: SnackPosition.BOTTOM,
                                    "Err",
                                    "Password Reset Email Send");
                                // ignore: use_build_context_synchronously
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                              } on FirebaseAuthException catch (e) {
                                Get.snackbar("Err", "${e.message}",
                                    snackPosition: SnackPosition.BOTTOM);
                                Navigator.of(context).pop();
                              }
                            }
                          },
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ));
  }
}
