import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hospital/pages/contact/view.dart';

import '../../common/utils/app_color.dart';
import '../../common/widgets/custom_text.dart';
import '../about/view.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool value1 = true;
  bool value2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 70,
          flexibleSpace: Container(
            // height: 108,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [AppColor.amber, AppColor.green],
                    begin: Alignment.bottomRight,
                    end: Alignment.topCenter)),
          ),
          elevation: 0,
          backgroundColor: AppColor.white,
          title: const Text(
            'Setttings',
            style: TextStyle(
              color: AppColor.white,
            ),
          ),
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
                child: const RegularText(
                  text: 'Apps Settings',
                  fontWeight: FontWeight.w600,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: AppColor.green,
                  size: 19.34,
                ),
                title: const RegularText(
                  text: 'Health Tips',
                  fontWeight: FontWeight.w600,
                ),
                trailing: Transform.scale(
                  scale: 1.5,
                  child: Switch.adaptive(
                      activeColor: AppColor.green,
                      value: value1,
                      onChanged: (value1) =>
                          setState(() => this.value1 = value1)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.notifications,
                    color: AppColor.green, size: 19.34),
                title: const RegularText(
                  text: 'Notifications',
                  fontWeight: FontWeight.w600,
                ),
                trailing: Transform.scale(
                  scale: 1.5,
                  child: Switch.adaptive(
                      activeColor: AppColor.green,
                      value: value2,
                      onChanged: (value2) =>
                          setState(() => this.value2 = value2)),
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
                child: const RegularText(
                  text: 'About User',
                  fontWeight: FontWeight.w600,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: AppColor.green,
                  size: 19.34,
                ),
                title: const RegularText(
                  text: 'About',
                  fontWeight: FontWeight.w600,
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: AppColor.green, size: 16),
                onTap: () => Get.to(const AboutScreen()),
              ),
              ListTile(
                leading:
                    const Icon(Icons.stars, color: AppColor.green, size: 19.34),
                title: const RegularText(
                  text: 'Rate Us',
                  fontWeight: FontWeight.w600,
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: AppColor.green, size: 16),
                onTap: () => Get.to(const ContactUsScreen()),
              )
            ],
          ),
        ));
  }
}
