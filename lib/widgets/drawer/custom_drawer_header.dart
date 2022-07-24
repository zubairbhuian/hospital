import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_color.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseAuth.instance;
    final user = firebase.currentUser!;
    return Container(
      padding: const EdgeInsets.only(top: 44, bottom: 38),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        horizontalTitleGap: 15,
        leading: const CircleAvatar(
          // radius: 51,
          backgroundColor: AppColor.white,
          child: Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
        ),
        title: Text(
          "User Name",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: AppColor.textColor,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
        ),
        subtitle: Text(
          FirebaseAuth.instance.currentUser!.email!,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
                color: AppColor.textColor,
                fontSize: 13,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
