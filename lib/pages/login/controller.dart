import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hospital/common/models/user.dart';
import 'package:hospital/common/routes/app_routes.dart';

import '../../common/store/user.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>['openid']);

class LogInController extends GetxController {
static LogInController get to => Get.find();

  bool obscureText = true;

  final formKey = GlobalKey<FormState>();
  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();

  final db = FirebaseFirestore.instance;

  Future<void> handleEmailSignIn() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailControter.text, password: passwordControter.text);
      Get.snackbar("Congrach", "Login Success");
      log(credential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Opps!", 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Opps!", 'Wrong password provided for that user.');
      }
    }
  }

  Future<void> handleFaceBookSignIn() async {
    try {
      Get.snackbar('Opps!!', "This Service is not available");
    } catch (e) {
      Get.snackbar("Opps!", "Something was wrong");
      log(e.toString());
    }
  }

  Future<void> handleGoogleSignIn() async {
    try {
      log("Hey Zubair,It working");
      var user = await _googleSignIn.signIn();

      if (user != null) {
        final gAuth = await user.authentication;
        final credential = GoogleAuthProvider.credential(
            idToken: gAuth.idToken, accessToken: gAuth.accessToken);
        FirebaseAuth.instance.signInWithCredential(credential);

        UserLoginResponseEntity userProfile = UserLoginResponseEntity();
        userProfile.email = user.email;
        userProfile.accessToken = user.id;
        userProfile.displayName = user.displayName;
        userProfile.photoUrl = user.photoUrl;
        userProfile.weight = '';
        userProfile.gender = '';
        userProfile.bloodGroup = '';
        userProfile.phone = '';
        userProfile.dateOfBirth = '';
        // UserStore
        UserStore.to.saveProfile(userProfile);
        var userDatabase = await db
            .collection("users")
            .withConverter(
              fromFirestore: UserData.fromFirestore,
              toFirestore: (UserData userData, options) =>
                  userData.toFirestore(),
            )
            .where("id", isEqualTo: user.id)
            .get();

        if (userDatabase.docs.isEmpty) {
          final data = UserData(
              id: user.id,
              name: user.displayName,
              email: user.email,
              photourl: user.photoUrl,
              location: "",
              fcmtoken: "",
              weight: "",
              gender: "",
              bloodGroup: "",
              phone: "",
              dateOfBirth: "",
              addtime: Timestamp.now());

          await db
              .collection("users")
              .withConverter(
                fromFirestore: UserData.fromFirestore,
                toFirestore: (UserData userData, options) =>
                    userData.toFirestore(),
              )
              .add(data);
        }
      }
      Get.snackbar("Congrach", "Login Success");
      Get.offNamed(AppRoutes.Application);
    } catch (e) {
      Get.snackbar("Opps!", "Something was wrong");
      log(e.toString());
    }
  }

  @override
  void onClose() {
    emailControter.dispose();
    passwordControter.dispose();
    super.onClose();
  }
}
