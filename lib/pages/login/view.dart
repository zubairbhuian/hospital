import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:doctor/common/routes/app_routes.dart';
import 'package:doctor/common/widgets/custom_text.dart';
import 'package:doctor/common/widgets/custom_text_field.dart';
import 'package:doctor/common/widgets/custom_widgets.dart';
import 'package:doctor/pages/login/index.dart';

import '../../common/utils/app_color.dart';
import '../../common/widgets/auth_btn.dart';
import '../../common/widgets/custom_appbar_shape.dart';
import '../../common/widgets/custom_btn.dart';

class LoginScreen extends GetView<LogInController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColor.white,
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      body: GetBuilder<LogInController>(
          builder: (controller) => Stack(
                children: [
                  Positioned(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Form(
                            key: controller.formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Welcome Back!',
                                    style: TextStyle(
                                          fontSize: 34.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.black),
                                    ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    'You will get best quality health care service with the low cost',
                                    textAlign: TextAlign.center,
                                    style:  TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.grayLite),
                                    ),
                                const SizedBox(
                                  height: 28,
                                ),
                                CustomTextField(
                                  controller: controller.emailControter,
                                  hintText: 'Email',
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: AppColor.textColorLite,
                                    size: 25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                CustomTextField(
                                  controller: controller.passwordControter,
                                  obscureText: controller.obscureText,
                                  hintText: 'Password',
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    // Icons.remove_red_eye,
                                    color: AppColor.textColorLite,
                                    size: 25,
                                  ),
                                  suffixIcon: controller.obscureText == true
                                      ? IconButton(
                                          onPressed: () {
                                            controller.obscureText = false;
                                            controller.update();
                                          },
                                          icon: const Icon(
                                            Icons.visibility_off,
                                            color: AppColor.textColorLite,
                                          ))
                                      : IconButton(
                                          onPressed: () {
                                            controller.obscureText = true;
                                            controller.update();
                                          },
                                          icon: const Icon(
                                            Icons.remove_red_eye,
                                          )),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                SizedBox(
                                  width: 100.sw,
                                  child: GestureDetector(
                                    child: const RegularText(
                                      text: 'Forgot Password?',
                                      textAlign: TextAlign.end,
                                      color: AppColor.green,
                                    ),
                                    onTap: () {
                                      Get.toNamed(AppRoutes.FORGET_PASS);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomBtn(
                                  onPressed: () async {
                                    controller.handleEmailSignIn();
                                    // Get.offAllNamed(AppRoutes.Application);
                                  },
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
                                        onPressed: () {
                                          controller.handleFaceBookSignIn();
                                        }),
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
                                        onPressed: () {
                                          controller.handleGoogleSignIn();
                                        }),
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
                                    style: const TextStyle(
                                        color: AppColor.black, fontSize: 15),
                                    children: [
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Get.toNamed(AppRoutes.REGESTATION);
                                        },
                                      text: ' Create new',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.blue))
                                ])),
                          ),
                        )
                      ],
                    ),
                  ),
                  if(controller.isLoaded)
                  const Positioned(child: Loader())
                ],
              )));

  AppBar _appBar() => AppBar(
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
                      style:  TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.white),
                      ),
                  Text("Support To Home",
                      style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                ],
              )
            ],
          ),
        ),
      ));
}
