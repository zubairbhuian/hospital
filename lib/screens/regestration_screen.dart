import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/screens/loging_screen.dart';
import 'package:hospital/utils/app_color.dart';
import 'package:hospital/widgets/custom_btn.dart';
import 'package:intl/intl.dart';

import '../widgets/auth_btn.dart';
import '../widgets/custom_appbar_shape.dart';
import 'main_screen.dart';

class RegestrationScreen extends StatefulWidget {
  const RegestrationScreen({Key? key, required}) : super(key: key);

  @override
  State<RegestrationScreen> createState() => _RegestrationScreenState();
}

class _RegestrationScreenState extends State<RegestrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nameControter = TextEditingController();
  final _phoneControter = TextEditingController();
  final _dateOfBirthControter = TextEditingController();
  final _weightControter = TextEditingController();
  final _bloodGroupControter = TextEditingController();
  final _genderControter = TextEditingController();

  final _emailControter = TextEditingController();
  final _passwordControter = TextEditingController();
  final _repasswordControter = TextEditingController();
  bool obscureText = true;
  // DropDown Button
  List<String> gender = ["Male", "Female", "Other"];
  List<String> blooodGroup = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];

  @override
  void dispose() {
    _emailControter.dispose();
    _passwordControter.dispose();
    _repasswordControter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColor.bgColorOne,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 130,
          backgroundColor: Colors.transparent,
          leading: Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
                onPressed: () {
                  Get.off(() => const LoginScreen());
                },
              )),
          flexibleSpace: ClipPath(
            clipper: CustomAppbarShape(),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColor.green, AppColor.amber],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create Account",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.white),
                      )),
                  Text("Enter info registration",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      )),
                ],
              ),
            ),
          )),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Full Name',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  controller: _nameControter,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' Type Name',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (String? value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r"^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)")
                  //           .hasMatch(value)) {
                  //     return 'Enter your Full Name';
                  //   }
                  //   return null;
                  // },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Phone',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  controller: _phoneControter,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: 'Type Phone',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (String? value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value)) {
                  //     return 'Enter your valid Phone Number';
                  //   }
                  //   return null;
                  // },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Email',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  controller: _emailControter,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' Type Email',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return 'Enter your valid Email';
                    }
                    return null;
                  },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Weight',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  controller: _weightControter,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' Type Your Weight',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (String? value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                  //           .hasMatch(value)) {
                  //     return 'Enter your valid Your Weight';
                  //   }
                  //   return null;
                  // },
                ),
                // !Blood Group
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Blood Group',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _bloodGroupControter,
                  readOnly: true,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: "Select Your Group",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: DropdownButton<String>(
                          items: blooodGroup.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              onTap: () {
                                setState(() {
                                  _bloodGroupControter.text = value;
                                });
                              },
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      )),
                  // validator: (String? value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                  //           .hasMatch(value)) {
                  //     return 'Enter your valid your Blood Group';
                  //   }
                  //   return null;
                  // },
                ),
                // !Gender
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Gender',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _genderControter,
                  readOnly: true,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: "Select Your Gender",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: DropdownButton<String>(
                          items: gender.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              onTap: () {
                                setState(() {
                                  _genderControter.text = value;
                                });
                              },
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      )),
                  // validator: (String? value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                  //           .hasMatch(value)) {
                  //     return 'Enter your valid your Gender';
                  //   }
                  //   return null;
                  // },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Date of Birth',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _dateOfBirthControter,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month),
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' YYYY/MM/DD',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  // validator: (String? value) {
                  //   if (value!.isEmpty) {
                  //     return 'Enter your BrithDay';
                  //   }
                  //   return null;
                  // },
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2010),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      setState(() {
                        _dateOfBirthControter.text =
                            DateFormat('dd/mm/yyyy').format(pickedDate);
                      });
                    }
                  },
                ),

                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Password',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _passwordControter,
                  obscureText: obscureText,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: ' Type password',
                      hintStyle: TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Create a new password";
                    } else if (value.length < 6) {
                      return "Your minimum password should be 6 ";
                    } else {
                      return null;
                    }
                  },
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Re-password',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color(0xff8E9195),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                TextFormField(
                  controller: _repasswordControter,
                  obscureText: obscureText,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColor.textColor)),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      suffixIcon: obscureText == true
                          ? IconButton(
                              onPressed: () {
                                obscureText = false;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.visibility_off,
                                color: AppColor.textColorLite,
                              ))
                          : IconButton(
                              onPressed: () {
                                obscureText = true;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                              )),
                      contentPadding: const EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 28, right: 28),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          borderSide: BorderSide(color: AppColor.borderColor)),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          color: AppColor.textColorLite, fontSize: 14)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Re-password";
                    } else if (_repasswordControter.text !=
                        _passwordControter.text) {
                      return "Password isnot match";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomBtn(
                  title: 'Sign Up',
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _emailControter.text.trim(),
                                password: _passwordControter.text.trim());
                      } on FirebaseAuthException catch (e) {
                        print(e);
                        // CustromSnackber.showSnackber(e.message);
                        Get.snackbar(
                            snackPosition: SnackPosition.BOTTOM,
                            'err',
                            "${e.message}");
                      }
                    }
                    if (FirebaseAuth.instance.currentUser!.email != null) {
                      Get.off(() => const MainScreen());
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    AuthBtn(
                        btnTitle: 'facebook',
                        icon: const FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Color(0xff3B5999),
                          size: 17,
                        ),
                        onPressed: () {}),
                    const SizedBox(
                      width: 10,
                    ),
                    AuthBtn(
                        btnTitle: 'Google',
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Color(0xffDD4B39),
                          size: 17,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 40.h),
        SizedBox(
          height: 50,
          child: Center(
            child: RichText(
                text: TextSpan(
                    text: 'Already have an account?  ',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 143, 143, 143),
                        fontSize: 15),
                    children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.off(() => const LoginScreen());
                        },
                      text: 'Log in',
                      style: const TextStyle(color: AppColor.green))
                ])),
          ),
        )
      ]));
}
