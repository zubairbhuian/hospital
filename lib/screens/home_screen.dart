import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hospital/screens/doctor_screen.dart';
import 'package:hospital/screens/services_screen.dart';
import 'package:hospital/widgets/custom_icon_btn.dart';
import 'package:hospital/widgets/home/home_card.dart';
import 'package:hospital/widgets/regular_text.dart';

import '../utils/app_color.dart';
import '../widgets/drawer/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.white,
          leading: const Padding(
            padding: EdgeInsets.only(top: 7, bottom: 7, left: 14),
            child: CircleAvatar(
              backgroundColor: AppColor.white,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
            ),
          ),
          title: Text(
            FirebaseAuth.instance.currentUser!.email!,
            style: const TextStyle(
              color: AppColor.textColor,
            ),
          ),
          actions: [
            IconButton(
                splashRadius: 25,
                onPressed: () {},
                icon: const Icon(Icons.search, color: AppColor.black)),
            Builder(
                builder: (context) => IconButton(
                    splashRadius: 25,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.notes,
                      color: AppColor.black,
                    ))),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            // ?main Padding
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: RegularText(
                    text: 'Find My Medical',
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // ?Button
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CustomIconBtn(
                      text: 'Emargency',
                      icon: FontAwesomeIcons.phone,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomIconBtn(
                      text: 'Appointment',
                      icon: FontAwesomeIcons.calendar,
                      color: AppColor.greenLite,
                      onPressed: () {},
                    ),
                  ],
                ),

                // ?Card
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeCard(
                        text: 'Doctors',
                        icon: FontAwesomeIcons.userDoctor,
                        onTap: () => Get.to(const DoctorScreen())),
                    HomeCard(
                        text: 'Services',
                        icon: FontAwesomeIcons.headset,
                        onTap: () => Get.to(const ServicesScreen())),
                    HomeCard(
                        text: 'Packages',
                        icon: FontAwesomeIcons.stethoscope,
                        onTap: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeCard(
                        text: 'Ambulance',
                        icon: FontAwesomeIcons.truckMedical,
                        onTap: () {}),
                    HomeCard(
                        text: 'Consultation',
                        icon: FontAwesomeIcons.peopleRoof,
                        onTap: () {}),
                    HomeCard(
                        text: 'Medicine',
                        icon: FontAwesomeIcons.capsules,
                        onTap: () {}),
                  ],
                ),

                // ?How do you feel
                const SizedBox(
                  height: 40,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: RegularText(
                    text: 'Find My Medical',
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image:
                                        AssetImage('images/home_cold_2.png')),
                                RegularText(text: 'Cold')
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image: AssetImage('images/home_fever.png')),
                                RegularText(text: 'Fever')
                              ],
                            ),
                          ),
                          onTap: () {
                            // print(demo.currentContext?.size);
                          },
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image:
                                        AssetImage('images/home_cold_2.png')),
                                RegularText(text: 'Cold')
                              ],
                            ),
                          ),
                          onTap: () {
                            // print(demo.currentContext?.size);
                          },
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image: AssetImage('images/home_fever.png')),
                                RegularText(text: 'Cough')
                              ],
                            ),
                          ),
                          onTap: () {
                            // print(demo.currentContext?.size);
                          },
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image:
                                        AssetImage('images/home_cold_2.png')),
                                RegularText(text: 'Cold')
                              ],
                            ),
                          ),
                          onTap: () {
                            // print(demo.currentContext?.size);
                          },
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image: AssetImage('images/home_fever.png')),
                                RegularText(text: 'Cold')
                              ],
                            ),
                          ),
                          onTap: () {
                            // print(demo.currentContext?.size);
                          },
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(800.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 25.5, top: 25.5, left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    width: 42,
                                    height: 42,
                                    image:
                                        AssetImage('images/home_cold_2.png')),
                                RegularText(text: 'Cold')
                              ],
                            ),
                          ),
                          onTap: () {
                            // print(demo.currentContext?.size);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //  ?Cold
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: RegularText(
                    text: "30+ basic treatment of Cold",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.transparent,
                    height: 109,
                    child: Row(
                      children: [
                        const Image(
                            width: 125,
                            image: AssetImage('images/home_t1.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const RegularText(
                              text: 'Treatment',
                              color: AppColor.green,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: '10 Tips to Prevent The Common Cold',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: 'By Dr. Muhib  Dec 3, 2020',
                              color: AppColor.textColorLite,
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.transparent,
                    height: 109,
                    child: Row(
                      children: [
                        const Image(
                            width: 125,
                            image: AssetImage('images/home_t2.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const RegularText(
                              text: 'Treatment',
                              color: AppColor.green,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: '10 Tips to Prevent The Common Cold',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: 'By Dr. Muhib  Dec 3, 2020',
                              color: AppColor.textColorLite,
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.transparent,
                    height: 109,
                    child: Row(
                      children: [
                        const Image(
                            width: 125,
                            image: AssetImage('images/home_t3.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const RegularText(
                              text: 'Treatment',
                              color: AppColor.green,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: '10 Tips to Prevent The Common Cold',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: 'By Dr. Muhib  Dec 3, 2020',
                              color: AppColor.textColorLite,
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.transparent,
                    height: 109,
                    child: Row(
                      children: [
                        const Image(
                            width: 125,
                            image: AssetImage('images/home_t4.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const RegularText(
                              text: 'Treatment',
                              color: AppColor.green,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: '10 Tips to Prevent The Common Cold',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const RegularText(
                              text: 'By Dr. Muhib  Dec 3, 2020',
                              color: AppColor.textColorLite,
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ));
  }
}
