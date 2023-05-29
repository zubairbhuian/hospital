import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctor/pages/application/index.dart';

import '../../common/utils/app_color.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplicationController>(
        builder: (controller) => Scaffold(
            extendBody: true,
            bottomNavigationBar: CurvedNavigationBar(
                backgroundColor: Colors.transparent,
                index: 1,
                color: AppColor.green,
                buttonBackgroundColor: AppColor.greenLite,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 600),
                onTap: (index) {
                  controller.pageIndex = index;
                  controller.update();
                },
                items: const [
                  Icon(
                    Icons.design_services,
                    color: AppColor.white,
                  ),
                  Icon(Icons.home, color: AppColor.white),
                  Icon(Icons.notifications, color: AppColor.white),
                  Icon(Icons.settings, color: AppColor.white),
                ]),
            body: controller.pages[controller.pageIndex ?? 1]));
  }
}
