import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswardController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailControter = TextEditingController();

  @override
  void onClose() {
    emailControter.dispose();
    super.onClose();
  }
}
