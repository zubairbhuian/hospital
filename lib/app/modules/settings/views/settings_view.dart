import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hospital/app/core/config/color.dart';
import 'package:hospital/app/core/config/style.dart';
import 'package:hospital/app/widgets/appbar.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: Text('Notification'),
          fgColor: kWhite,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    bottom: 18, top: 18, left: 15, right: 15),
                width: 100.sw,
                decoration: BoxDecoration(
                    color: const Color(0xffFAFAFA),
                    border:
                        Border.all(width: 1, color: const Color(0xffEAEAEA)),
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  'Apps Settings',
                  style: kLabelLarge,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: kPrimaryColor,
                  size: 19.34,
                ),
                title: Text(
                  'Health Tips',
                  style: kLabelLarge,
                ),
                trailing: Transform.scale(
                  scale: .5,
                  child: GetBuilder<SettingsController>(
                    builder: (controller) {
                      return Switch.adaptive(
                          activeColor: kPrimaryColor,
                          value: controller.isOpenHealthTips,
                          onChanged: (value) {
                            controller.isOpenHealthTips = value;
                            controller.update();
                          });
                    }
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.notifications,
                    color: kPrimaryColor, size: 19.34),
                title: Text(
                  'Notifications',
                  style: kLabelLarge,
                ),
                trailing: Transform.scale(
                  scale: .5,
                  child: GetBuilder<SettingsController>(
                    builder: (controller) {
                      return Switch.adaptive(
                          activeColor: kPrimaryColor,
                          value: controller.isOpenNotifications,
                          onChanged: (value) {
                            controller.isOpenNotifications = value;
                            controller.update();
                          });
                    }
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 6),
                padding: const EdgeInsets.only(
                    bottom: 18, top: 18, left: 15, right: 15),
                width: 100.sw,
                decoration: BoxDecoration(
                    color: const Color(0xffFAFAFA),
                    border:
                        Border.all(width: 1, color: const Color(0xffEAEAEA)),
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  'About User',
                  style: kLabelLarge,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: kPrimaryColor,
                  size: 19.34,
                ),
                title: Text(
                  'About',
                  style: kLabelLarge,
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: kPrimaryColor, size: 16),
                // onTap: () => Get.to(const AboutScreen()),
              ),
              ListTile(
                leading:
                    const Icon(Icons.stars, color: kPrimaryColor, size: 19.34),
                title: Text(
                  'Rate Us',
                  style: kLabelLarge,
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: kPrimaryColor, size: 16),
                // onTap: () => Get.to(const ContactUsScreen()),
              )
            ],
          ),
        ));
  }
}
