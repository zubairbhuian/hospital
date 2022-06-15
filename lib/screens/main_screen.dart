import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hospital/screens/home_screen.dart';
import 'package:hospital/screens/page2.dart';
import 'package:hospital/screens/page3.dart';
import 'package:hospital/screens/page4.dart';
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
  const Page3(),
  const Page4(),
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: 1,
            color: AppColor.green,
            buttonBackgroundColor: AppColor.greenLite,
            backgroundColor: AppColor.white,
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
