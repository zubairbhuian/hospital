import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_color.dart';
import '../big_text.dart';
import '../regular_text.dart';

class PatientReviews extends StatelessWidget {
  const PatientReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // !Review
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: BigText(text: "Patient Reviews")),
        ),

        SizedBox(
          height: 185,
          child: Swiper(
            itemCount: 3,
            autoplay: true,
            autoplayDelay: 5000,
            curve: Curves.easeIn,
            layout: SwiperLayout.DEFAULT,
            pagination: const SwiperPagination(
              builder: DotSwiperPaginationBuilder(),
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  semanticContainer: true,
                  elevation: 10,
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 30,
                    left: 10,
                    right: 10,
                  ),
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        horizontalTitleGap: 10,
                        contentPadding:
                            const EdgeInsets.only(left: 17, right: 17),
                        leading: const CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                AssetImage('images/demo_doctor.png')),
                        title: const RegularText(
                          text: 'Dr. Stella Roumy',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        subtitle: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: AppColor.yellow,
                              size: 14,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.yellow,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.yellow,
                              size: 14,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.yellow,
                              size: 14,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                          ],
                        ),
                        trailing: const RegularText(
                            text: 'Dec 24,2020',
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Text(
                            "I'm really thanksfull to Dr. Gumoh Brian for this nice treatment and friendly behavior. Absolutely he is a best and feborite doctor.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(
                                color: AppColor.grayLite,
                                fontSize: 15.w,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ));
            },
          ),
        ),
      ],
    );
  }
}
