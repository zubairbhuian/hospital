import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctor/pages/login/index.dart';

class ForgetPasswardController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailControter = TextEditingController(text: LogInController.to.emailControter.text);

  @override
  void onClose() {
    emailControter.dispose();
    super.onClose();
  }
}
