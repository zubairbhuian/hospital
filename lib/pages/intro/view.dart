import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/common/routes/app_routes.dart';
import 'package:hospital/common/store/config.dart';
import 'package:hospital/common/utils/app_color.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'index.dart';

class IntroScreen extends GetWidget<IntroController> {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Flexible(
            child: IntroductionScreen(
              next: const Text("Next"),
              done: const Text("Next"),
              back: const Text("Previous"),
              onDone: () {
                ConfigStore.to.saveAlreadyOpen();
                Get.offAllNamed(AppRoutes.SIGN_IN);
              },
              showBackButton: true,
              showNextButton: true,
              showDoneButton: true,
              dotsDecorator: const DotsDecorator(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                activeColor: Color(0xff8E9195),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                activeSize: Size(36, 8),
                size: Size(8, 8),
                color: AppColor.textColorLite,
              ),
              pages: [
                PageViewModel(
                    decoration: const PageDecoration(
                      imageFlex: 3,
                      bodyFlex: 0,
                      imagePadding: EdgeInsets.only(bottom: 5),
                      titlePadding: EdgeInsets.only(top: 5, bottom: 24.0),
                    ),
                    titleWidget: Text(
                      'Care For Home 1',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 34.sp, fontWeight: FontWeight.w600)),
                    ),
                    bodyWidget: Text(
                      'Help our family members back home.',
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ),
                    image: const Image(
                      image: AssetImage(
                        'images/intro_2.png',
                      ),
                    )),
                PageViewModel(
                    decoration: const PageDecoration(
                      imageFlex: 3,
                      bodyFlex: 0,
                      imagePadding: EdgeInsets.only(bottom: 5),
                      titlePadding: EdgeInsets.only(top: 5, bottom: 24.0),
                    ),
                    titleWidget: Text(
                      'Care For Home 2',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 34.sp, fontWeight: FontWeight.w600)),
                    ),
                    bodyWidget: Text(
                      'Help our family members back home.',
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ),
                    image: const Image(
                      image: AssetImage(
                        'images/intro_2.png',
                      ),
                    )),
                PageViewModel(
                    decoration: const PageDecoration(
                      imageFlex: 3,
                      bodyFlex: 0,
                      imagePadding: EdgeInsets.only(bottom: 5),
                      titlePadding: EdgeInsets.only(top: 5, bottom: 24.0),
                    ),
                    titleWidget: Text(
                      'Care For Home 3',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 34.sp, fontWeight: FontWeight.w600)),
                    ),
                    bodyWidget: Text(
                      'Help our family members back home.',
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ),
                    image: const Image(
                      image: AssetImage(
                        'images/intro_2.png',
                      ),
                    )),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //       top: 50, bottom: 30, left: 20, right: 20),
          //   child: SizedBox(
          //       width: double.maxFinite,
          //       child: CustomBtn(
          //         onPressed: () {
          //           if (controller.pageIndex.value == 0) {
          //             controller.pageIndex.value + 1;
          //           }
          //           Get.off(const LoginScreen());
          //         },
          //         title: 'Get Started',
          //       )),
          // ),
        ],
      ),
    ));
  }
}
