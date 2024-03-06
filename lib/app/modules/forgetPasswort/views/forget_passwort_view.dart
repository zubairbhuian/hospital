import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_passwort_controller.dart';

class ForgetPasswortView extends GetView<ForgetPasswortController> {
  const ForgetPasswortView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetPasswortView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgetPasswortView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
