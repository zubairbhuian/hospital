import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital/app/core/utils/int_extensions.dart';
import 'package:hospital/app/routes/app_pages.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/intro_1.png'),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Get.offNamed(Routes.SIGN_IN);
                  },
                  child: const Text('Go to login')),
              ElevatedButton(onPressed: () {}, child: const Text('Go back')),
              20.height
            ],
          ),
        ),
      ),
    );
  }
}
