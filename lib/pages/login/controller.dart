import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:doctor/common/models/user.dart';
import 'package:doctor/common/routes/app_routes.dart';
import 'package:doctor/common/widgets/common_func.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../common/store/user.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>['openid']);

class LogInController extends GetxController {
  static LogInController get to => Get.find();

  bool obscureText = true;
  bool isLoaded = false;
  UserLoginResponseEntity userProfile = UserLoginResponseEntity();

  final formKey = GlobalKey<FormState>();
  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();

  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  Future<void> handleEmailSignIn() async {
    try {
      isLoaded = true;
      update();
      // Singin
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailControter.text, password: passwordControter.text);
      // Add database
      var userDatabase = await db
          .collection("users")
          .doc(auth.currentUser?.uid)
          .withConverter(
            fromFirestore: UserData.fromFirestore,
            toFirestore: (UserData userData, options) => userData.toFirestore(),
          )
          .get();
      var user = userDatabase.data();
      // Store local
      userProfile.email = user!.email;
      userProfile.accessToken = user.id;
      userProfile.displayName = user.name;
      userProfile.photoUrl = user.photourl;
      userProfile.weight = user.weight;
      userProfile.gender = user.gender;
      userProfile.bloodGroup = user.bloodGroup;
      userProfile.phone = user.phone;
      userProfile.dateOfBirth = user.dateOfBirth;
      // UserStore func
      UserStore.to.saveProfile(userProfile);
      // Display
      // snackbar
      customSnackbar(msg: 'Login Success');
      Get.offAllNamed(AppRoutes.Application);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        customSnackbar(msg: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        customSnackbar(msg: 'Wrong password provided for that user.');
      }
    }
    isLoaded = false;
    update();
  }

  Future<void> handleFaceBookSignIn() async {
    try {
      customSnackbar(msg: 'This service will be coming soon');
    } catch (e) {
      customSnackbar(msg: 'Something was wrong');
      log(e.toString());
    }
  }

  Future<void> handleGoogleSignIn() async {
    isLoaded = true;
    update();
    try {
      log("Hey Zubair,It working");
      var user = await _googleSignIn.signIn();

      if (user != null) {
        final gAuth = await user.authentication;
        final credential = GoogleAuthProvider.credential(
            idToken: gAuth.idToken, accessToken: gAuth.accessToken);
        FirebaseAuth.instance.signInWithCredential(credential);
        userProfile.email = user.email;
        userProfile.accessToken = user.id;
        userProfile.displayName = user.displayName;
        userProfile.photoUrl = user.photoUrl;
        userProfile.weight = '';
        userProfile.gender = '';
        userProfile.bloodGroup = '';
        userProfile.phone = '';
        userProfile.dateOfBirth = '';

        UserStore.to.saveProfile(userProfile);
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
            .collection('users')
            .doc(user.id)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            log("User exists");
          } else {
            db
                .collection('users')
                .doc(user.id)
                .withConverter(
                  fromFirestore: UserData.fromFirestore,
                  toFirestore: (UserData userData, options) =>
                      userData.toFirestore(),
                )
                .set(data);
                
          }
        });
        customSnackbar(msg: 'Login Success');
        Get.offNamed(AppRoutes.Application);
      }
    } catch (e) {
      customSnackbar(msg: 'Something was wrong');
      log(e.toString());
    }
    isLoaded = false;
    update();
  }

  @override
  void onClose() {
    emailControter.dispose();
    passwordControter.dispose();
    super.onClose();
  }
}
