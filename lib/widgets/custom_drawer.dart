import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../screens/introduction_screen.dart';
import '../utils/app_color.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseAuth.instance;
    final user = firebase.currentUser!;
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            user.email!,
            style: const TextStyle(
                color: AppColor.green,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          ElevatedButton.icon(
              onPressed: () {
                firebase.signOut();

                Get.off(() => const IntroScreen());
              },
              icon: const Text('Logout'),
              label: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
