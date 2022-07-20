import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital/widgets/big_text.dart';
import 'package:hospital/widgets/regular_text.dart';
import 'package:readmore/readmore.dart';

import '../utils/app_color.dart';

class DoctorprofileScreen extends StatelessWidget {
  const DoctorprofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        backgroundColor: AppColor.white,
        elevation: 0,
        toolbarHeight: 198,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(
            top: 30,
          ),
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
                  left: 4,
                  child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.white,
                        size: 16,
                      )),
                ),
                const BigText(
                  text: 'Doctor',
                  color: AppColor.white,
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
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 90),
                const RegularText(
                    text: 'Dr. Gumoh Brian',
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
                const RegularText(
                  text: 'Urology Surgeon',
                  color: AppColor.textColorLite,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                          color: AppColor.liteBG,
                          border:
                              Border.all(width: 1, color: AppColor.liteBorder),
                          borderRadius: BorderRadius.circular(360)),
                      child: IconButton(
                          disabledColor: Colors.red,
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.phone,
                            size: 20,
                            color: AppColor.green,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            color: AppColor.liteBG,
                            border: Border.all(
                                width: 1, color: AppColor.liteBorder),
                            borderRadius: BorderRadius.circular(360)),
                        child: IconButton(
                            disabledColor: Colors.red,
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.video,
                              size: 20,
                              color: AppColor.green,
                            )),
                      ),
                    ),
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                          color: AppColor.liteBG,
                          border:
                              Border.all(width: 1, color: AppColor.liteBorder),
                          borderRadius: BorderRadius.circular(360)),
                      child: IconButton(
                          disabledColor: Colors.red,
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.solidCommentDots,
                            size: 20,
                            color: AppColor.green,
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                // !About
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: BigText(text: 'About')),
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ReadMoreText(
                      style: GoogleFonts.inter(
                        color: AppColor.grayLite,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      moreStyle: GoogleFonts.inter(
                        color: AppColor.textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      lessStyle: GoogleFonts.inter(
                        color: AppColor.textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      trimMode: TrimMode.Line,
                      trimLines: 3,
                      trimExpandedText: 'Show less',
                      trimCollapsedText: 'Read more',
                      'Dr. Gumoh Brian jon is a Urology Surgeon in Pegion Medical Collage Hospital and is affiliated with the multiple hospitals in the area jon is a Urology Surgeon in Pegion Medical Collage Hospital and is affiliated with the multiple hospitals in the area'),
                ),
                const SizedBox(height: 15),
                // !Skill
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    width: 100.sw,
                    child: Wrap(
                      spacing: 4,
                      runSpacing: 8,
                      alignment: WrapAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: AppColor.liteBG,
                              border: Border.all(
                                  width: 1, color: AppColor.liteBorder),
                              borderRadius: BorderRadius.circular(80)),
                          child: const RegularText(text: 'MBBS', fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: AppColor.liteBG,
                              border: Border.all(
                                  width: 1, color: AppColor.liteBorder),
                              borderRadius: BorderRadius.circular(80)),
                          child: const RegularText(text: 'MCPS', fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: AppColor.liteBG,
                              border: Border.all(
                                  width: 1, color: AppColor.liteBorder),
                              borderRadius: BorderRadius.circular(80)),
                          child: const RegularText(
                              text: ' FCPS(BD)', fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: AppColor.liteBG,
                              border: Border.all(
                                  width: 1, color: AppColor.liteBorder),
                              borderRadius: BorderRadius.circular(80)),
                          child: const RegularText(
                              text: 'FCPS(PAK)', fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: AppColor.liteBG,
                              border: Border.all(
                                  width: 1, color: AppColor.liteBorder),
                              borderRadius: BorderRadius.circular(80)),
                          child:
                              const RegularText(text: 'MRCP(UK)', fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: AppColor.liteBG,
                              border: Border.all(
                                  width: 1, color: AppColor.liteBorder),
                              borderRadius: BorderRadius.circular(80)),
                          child: const RegularText(
                              text: 'FRCP(Edin)', fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // !Review
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: BigText(text: "Patient Reviews")),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 190,
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
                                  contentPadding: const EdgeInsets.only(
                                      left: 17, right: 17),
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
                ),
              ]),
        ),
      ),
    );
  }
}
