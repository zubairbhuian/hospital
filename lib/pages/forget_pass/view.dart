import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor/common/widgets/custom_text_field.dart';
import 'package:doctor/pages/forget_pass/controller.dart';

import '../../common/utils/app_color.dart';
import '../../common/widgets/custom_appbar_shape.dart';
import '../../common/widgets/custom_btn.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(25),
                child: SingleChildScrollView(
                    child: GetBuilder<ForgetPasswardController>(
                  builder: (controller) => Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextField(
                          controller: controller.emailControter,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: AppColor.textColorLite,
                            size: 25,
                          ),
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBtn(
                          title: 'Reset Password',
                          onPressed: () async {},
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ))),
          ),
        ));
  }

  AppBar _appBar() => AppBar(
      leading: Container(
          padding: const EdgeInsets.only(bottom: 60),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
            onPressed: () {
              Get.back();
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
                  style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.white),
                  ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 250,
                child: Text(
                    "Select which contact details should we use to reset your password",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white),
                    ),
              ),
            ],
          ),
        ),
      ));
}
