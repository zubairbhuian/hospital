import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital/app/core/utils/int_extensions.dart';


import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/welcome_bg.png'))),
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        ElevatedButton(
          onPressed: () {
            controller.onGetStared();
          },
          child: const Center(child: Text("Get stared")),
        ),
        100.height,
      ]),
    ));
  }
}
