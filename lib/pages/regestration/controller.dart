import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital/common/routes/app_routes.dart';
import 'package:hospital/pages/login/index.dart';

import '../../common/models/user.dart';
import '../../common/store/user.dart';

class RegestrationController extends GetxController {
  final db = FirebaseFirestore.instance;

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

  void handralRegester() async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailControter.text, password: passwordControter.text);
      UserLoginResponseEntity userProfile = UserLoginResponseEntity();
      userProfile.email = emailControter.text;
      userProfile.accessToken = credential.user?.uid;
      userProfile.displayName = nameControter.text;
      userProfile.photoUrl = "";
      userProfile.weight = weightControter.text;
      userProfile.gender = genderControter.text;
      userProfile.bloodGroup = genderControter.text;
      userProfile.phone = phoneControter.text;
      userProfile.dateOfBirth = dateOfBirthControter.text;
      // UserStore
      UserStore.to.saveProfile(userProfile);
        final data = UserData(
            id: credential.user?.uid,
            name: nameControter.text,
            email: credential.user?.email,
            photourl: "",
            location: "",
            fcmtoken: "",
            weight: weightControter.text,
            gender: genderControter.text,
            bloodGroup: bloodGroupControter.text,
            phone: phoneControter.text,
            dateOfBirth: dateOfBirthControter.text,
            addtime: Timestamp.now());

        await db
            .collection("users")
            .doc(credential.user?.uid)
            .withConverter(
              fromFirestore: UserData.fromFirestore,
              toFirestore: (UserData userData, options) =>
                  userData.toFirestore(),
            )
            .set(data);
        Get.offAll(AppRoutes.Application);
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Get.snackbar("Ooops!", "The account already exists for that email.");
        log('The account already exists for that email.');
      }
      log(e.toString());
      log("Pressed");
    }
  }

  void handralGoogleSignIn() {
    LogInController.to.handleGoogleSignIn();
  }

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
