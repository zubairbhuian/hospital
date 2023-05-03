import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/common/widgets/custom_text.dart';
import 'package:hospital/common/widgets/custom_text_field.dart';

import 'package:intl/intl.dart';

import '../../common/utils/app_color.dart';
import '../../common/widgets/custom_appbar_shape.dart';
import '../../common/widgets/custom_btn.dart';
import '../login/view.dart';
import 'controller.dart';

class ReRegestrationScreen extends GetWidget<ReRegestrationController> {
  const ReRegestrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColor.bgColorOne,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 115.h,
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
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20.w),
            child: GetBuilder<ReRegestrationController>(
              builder: (controller) => Form(
                key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 0),
                        child: RegularText(
                          text: 'Full Name',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.nameControter,
                      keyboardType: TextInputType.name,
                      hintText: ' Type Name',
                      padding:  EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      validator: (String? value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)")
                                .hasMatch(value)) {
                          return 'Enter your Full Name';
                        }
                        return null;
                      },
                    ),

                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Phone',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),

                    CustomTextField(
                      controller: controller.phoneControter,
                      keyboardType: TextInputType.phone,
                      hintText: 'Type Phone',
                      padding:  EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      validator: (String? value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value)) {
                          return 'Enter your valid Phone Number';
                        }
                        return null;
                      },
                    ),

                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Weight',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.weightControter,
                      keyboardType: TextInputType.number,
                      padding:  EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      hintText: ' Type Your Weight',
                      validator: (String? value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^0\d+').hasMatch(value)) {
                          return 'Enter your valid Your Weight';
                        }
                        return null;
                      },
                    ),

                    // !Blood Group
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Blood Group',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),

                    CustomTextField(
                      controller: controller.bloodGroupControter,
                      readOnly: true,
                      hintText: "Select Your Group",
                      padding:  EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: DropdownButton<String>(
                          items: controller.blooodGroup.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              onTap: () {
                                controller.bloodGroupControter.text = value;
                                controller.update();
                              },
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Enter Blood Group';
                        }
                        return null;
                      },
                    ),

                    // Gender
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Gender',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.genderControter,
                      readOnly: true,
                      hintText: "Select Your Gender",
                      padding:  EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: DropdownButton<String>(
                          items: controller.gender.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              onTap: () {
                                controller.genderControter.text = value;
                                controller.update();
                              },
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Enter your valid your Gender';
                        }
                        return null;
                      },
                    ),

                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Date of Birth',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.dateOfBirthControter,
                      keyboardType: TextInputType.emailAddress,
                      hintText: ' YYYY/MM/DD',
                      padding:  EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      suffixIcon: const Icon(Icons.calendar_month),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime(2010),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));
                        if (pickedDate != null) {
                          controller.dateOfBirthControter.text =
                              DateFormat('dd/mm/yyyy').format(pickedDate);
                          controller.update();
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomBtn(
                      title: 'Regester',
                      onPressed: () async {
                        if (controller.formKey.currentState!.validate()) {
                          //  Process data.
                        }
                      },
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(height: 40.h),
      ]));
}
