import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hospital/screens/home_screen.dart';
import 'package:hospital/screens/notification_screen.dart';
import 'package:hospital/screens/page2.dart';
import 'package:hospital/screens/settings.dart';
import 'package:hospital/utils/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int? _page;
final pages = [
  const Page2(),
  const HomeScreen(),
  const NotificationScreen(),
  const SettingsScreen(),
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
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
              setState(() => _page = index);
            },
            items: const [
              Icon(
                Icons.add_location_alt_outlined,
                color: AppColor.white,
              ),
              Icon(Icons.home, color: AppColor.white),
              Icon(Icons.notifications, color: AppColor.white),
              Icon(Icons.settings, color: AppColor.white),
            ]),
        body: pages[_page ?? 1]);
  }
}
