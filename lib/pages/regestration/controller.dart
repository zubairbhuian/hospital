import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegestrationController extends GetxController {
  bool obscureText = true;
  // DropDown Button
  List<String> gender = ["Male", "Female", "Other"];
  List<String> blooodGroup = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameControter = TextEditingController();
  final phoneControter = TextEditingController();
  final dateOfBirthControter = TextEditingController();
  final weightControter = TextEditingController();
  final bloodGroupControter = TextEditingController();
  final genderControter = TextEditingController();

  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();
  final repasswordControter = TextEditingController();

  @override
  void onClose() {
    nameControter.dispose();
    phoneControter.dispose();
    dateOfBirthControter.dispose();
    weightControter.dispose();
    bloodGroupControter.dispose();
    genderControter.dispose();
    emailControter.dispose();
    passwordControter.dispose();
    repasswordControter.dispose();
    super.onClose();
  }
}
