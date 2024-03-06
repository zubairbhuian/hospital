import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:hospital/app/core/config/color.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointView extends GetView<EntryPointController> {
  const EntryPointView({super.key});
  @override
  Widget build(BuildContext context) {
       return GetBuilder<EntryPointController>(
        builder: (controller) => Scaffold(
            extendBody: true,
            bottomNavigationBar: CurvedNavigationBar(
                backgroundColor: Colors.transparent,
                index: controller.pageIndex,
                color: kPrimaryColor,
                buttonBackgroundColor: kYellow,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 600),
                onTap: (index) {
                  controller.pageIndex = index;
                  controller.update();
                },
                items: const [
                  Icon(
                    Icons.design_services,
                    color: kWhite,
                  ),
                  Icon(Icons.home, color: kWhite),
                  Icon(Icons.notifications, color:kWhite),
                  Icon(Icons.settings, color: kWhite),
                ]),
            body: controller.pages[controller.pageIndex]));
  
  
  }
}
