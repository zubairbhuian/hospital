import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital/screens/introduction_screen.dart';
import 'package:hospital/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseAuth.instance;
    final user = firebase.currentUser!;
    return Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          color: Colors.red,
          height: 30,
          width: 30,
        ),
        title: const Text('Omar Faruk'),
        actions: [
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.app_blocking)))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("This is home paze"),
          ],
        ),
      ),
    );
  }
}
