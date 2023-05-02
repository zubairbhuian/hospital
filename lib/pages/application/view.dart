import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../common/utils/app_color.dart';
import '../home/home_screen.dart';

import '../notification/index.dart';
import '../service/services_screen.dart';
import '../settings/index.dart';


class ApplicationScreen extends StatelessWidget {
 




 const ApplicationScreen({super.key});
  @override
  Widget build(BuildContext context) {

int? _page;
final pages = [
  const ServicesScreen(),
  const HomeScreen(),
  const NotificationScreen(),
  const SettingsScreen(),
];
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            index: 1,
            color: AppColor.green,
            buttonBackgroundColor: AppColor.greenLite,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
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
        body: pages[_page ?? 1]);
  }
}
