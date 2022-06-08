import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:hospital/utils/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseAuth.instance;
    final user = firebase.currentUser!;
    return Scaffold(
      appBar: AppBar(title: const Text('HomeScreen page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is HomeScreen page'),
            Text(
              user.email!,
              style: const TextStyle(color: AppColor.red, fontSize: 18),
            ),
            ElevatedButton(
                onPressed: () {
                  firebase.signOut();
                },
                child: const Text('LogOut'))
          ],
        ),
      ),
    );
  }
}
