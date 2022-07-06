import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class DoctorprofileScreen extends StatelessWidget {
  const DoctorprofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 198,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [AppColor.amber, AppColor.green],
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter)),
          child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: 0,
                  child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back_ios,
                          color: AppColor.white)),
                ),
                Text(
                  "Doctor",
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white),
                ),
                Positioned(
                  bottom: -80,
                  child: CircleAvatar(
                    backgroundColor: AppColor.white,
                    radius: 80.w,
                    child: CircleAvatar(
                      maxRadius: 75.w,
                      backgroundImage:
                          const AssetImage('images/demo_doctor.png'),
                    ),
                  ),
                )
              ]),
        )
      ]),
    );
  }
}
