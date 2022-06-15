import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_color.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        String imgUrl =
        'https://scontent.fdac80-1.fna.fbcdn.net/v/t1.6435-9/123042841_945908579151890_6246602248743437967_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE_H0d-mH39OysN5a0qVKJzONjtsS8E12I42O2xLwTXYuSdhNRxWIyj59WjUrCCHZGS3F2ibpUTzwGM7PXONha2&_nc_ohc=6f0kXyZml64AX9wBu_M&tn=h-uGHsxdg8zHKZc4&_nc_ht=scontent.fdac80-1.fna&oh=00_AT99wrS0nE13_YyuTYIvLy4BwuLBOIZk9lvMoT4pF54a2g&oe=62C913EB';
    final firebase = FirebaseAuth.instance;
    final user = firebase.currentUser!;
    return Container(
          padding: const EdgeInsets.only(top: 44, bottom: 38),
          color: const Color(0xffFAFAFA),
          child: ListTile(
            horizontalTitleGap: 15,
            leading: CircleAvatar(
              // radius: 51,
              backgroundColor: AppColor.white,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            title: Text(
              'Zubair Bhuian',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: AppColor.textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            subtitle: Text(
              'zubairbhuian@gmail.com',
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
