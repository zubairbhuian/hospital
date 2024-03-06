import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:hospital/app/core/config/color.dart';
import 'package:hospital/app/core/config/style.dart';
import 'package:hospital/app/core/utils/int_extensions.dart';
import 'package:hospital/app/routes/app_pages.dart';
import 'package:hospital/app/widgets/custom_textfield.dart';
import 'package:hospital/app/widgets/popup_dialogs.dart';
import 'package:hospital/app/widgets/social_icon_btn.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign in",
                style: kTitleLarge,
              ),
              24.height,
              Center(
                  child: SvgPicture.asset(
                      'assets/icons/auth/vectorscreen_person.svg')),
              24.height,
              Center(
                  child: Text(
                "Welcome Back!",
                style: kHeadlineMedium,
              )),
              6.height,
              Center(
                  child: Text(
                "Please login to continue",
                style: kBodyLarge,
              )),
              40.height,
              Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          controller: controller.emailController,
                          prefixUrl: 'assets/icons/auth/person.svg',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required.';
                            } else {
                              return null;
                            }
                          }),
                      CustomTextField(
                          controller: controller.passwordController,
                          isShowHideBTN: true,
                          prefixUrl: "assets/icons/auth/key.svg",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required.';
                            } else {
                              return null;
                            }
                          }),
                    ],
                  )),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  onTap: () {
                    Get.toNamed(Routes.FORGET_PASSWORT);
                  },
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        // Sign in process
                        Get.offAllNamed(Routes.ENTRY_POINT);
                      }
                    },
                    child: const Text("Sign in"),
                  )),
              30.height,
              Row(
                children: [
                  SocialIconBtn(
                      btnTitle: 'facebook',
                      icon: const FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Color(0xff3B5999),
                        size: 17,
                      ),
                      onPressed: () {
                        PopupDialog.showErrorMessage(
                            "This service is not available right now");
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  SocialIconBtn(
                      btnTitle: 'Google',
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Color(0xffDD4B39),
                        size: 17,
                      ),
                      onPressed: () {
                        PopupDialog.showErrorMessage(
                            "This service is not available right now");
                      }),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Don’t have an account?  ',
                        style: kBodyMedium,
                        children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offNamed(Routes.SIGN_UP);
                            },
                          text: ' Create new',
                          style: kBodyMedium.copyWith(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w500))
                    ])),
              )
            ],
          )),
    );
  }
}
