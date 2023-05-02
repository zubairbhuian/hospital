import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  bool obscureText = true;

  final formKey = GlobalKey<FormState>();
  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();
  
  @override
  void onClose() {
    emailControter.dispose();
    passwordControter.dispose();
    super.onClose();
  }
}
