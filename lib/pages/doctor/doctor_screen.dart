import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:hospital/screens/doctor_profile_screen.dart';
import 'package:hospital/widgets/regular_text.dart';

import '../utils/app_color.dart';
import '../widgets/drawer/custom_drawer.dart';
import '../widgets/home/doctor_catagori.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var demo = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          // height: 108,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [AppColor.amber, AppColor.green],
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter)),
        ),
        elevation: 0,
        backgroundColor: AppColor.white,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.white,
            size: 16,
          ),
          onTap: () => Get.back(),
        ),
        title: const Text(
          'Services',
          style: TextStyle(
            color: AppColor.white,
          ),
        ),
        actions: [
          IconButton(
              splashRadius: 25,
              onPressed: () {},
              icon: const Icon(Icons.search, color: AppColor.white)),
          Builder(
              builder: (context) => IconButton(
                  splashRadius: 25,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.notes,
                    color: AppColor.white,
                  ))),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const RegularText(
              text: 'Find Doctor',
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            // !Doctor Catagori
            Row(
              children: [
                DoctorCatagori(
                  icon: FontAwesomeIcons.userDoctor,
                  text1: "Dementia",
                  text2: "Doctor",
                  onTap: () {},
                ),
                DoctorCatagori(
                  icon: FontAwesomeIcons.prescriptionBottleMedical,
                  text1: "Dementia",
                  text2: "Medicine",
                  onTap: () {},
                ),
              ],
            ),
            Row(
              children: [
                DoctorCatagori(
                  icon: FontAwesomeIcons.heartCircleBolt,
                  text1: "Surgery",
                  text2: "wise",
                  onTap: () {},
                ),
                DoctorCatagori(
                  icon: FontAwesomeIcons.userNurse,
                  text1: "General",
                  text2: "wise",
                  onTap: () {},
                ),
              ],
            ),

            // !DoctorList
            Padding(
              padding: const EdgeInsets.only(bottom: 4, top: 4),
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xffEAEAEA)),
                    borderRadius: BorderRadius.circular(10)),
                leading: const CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage('images/demo_doctor.png')),
                title: const RegularText(
                  text: 'Dr. Stella Roumy',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                subtitle: Row(
                  children: const [
                    RegularText(text: 'General'),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.yellow,
                      size: 12,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    RegularText(text: '5.0'),
                  ],
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          left: 22.5.h, right: 22.5.h, bottom: 0, top: 0),
                      primary: const Color(0xffFAFAFA),
                      side:
                          const BorderSide(width: 1, color: Color(0xffEAEAEA)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80))),
                  child: const RegularText(
                    text: "Book",
                  ),
                  onPressed: () {},
                ),
                onTap: () => Get.to(const DoctorprofileScreen()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4, top: 4),
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xffEAEAEA)),
                    borderRadius: BorderRadius.circular(10)),
                leading: const CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage('images/demo_doctor.png')),
                title: const RegularText(
                  text: 'Dr. Stella Roumy',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                subtitle: Row(
                  children: const [
                    RegularText(text: 'General'),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.yellow,
                      size: 12,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    RegularText(text: '5.0'),
                  ],
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          left: 22.5.h, right: 22.5.h, bottom: 0, top: 0),
                      primary: const Color(0xffFAFAFA),
                      side:
                          const BorderSide(width: 1, color: Color(0xffEAEAEA)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80))),
                  child: const RegularText(
                    text: "Book",
                  ),
                  onPressed: () {},
                ),
                onTap: () {},
              ),
            ),

            // ?Testing widget
            TextButton(
                onPressed: () {
                  print("${demo.currentContext?.size}");
                },
                child: const Text('Test')),
          ]),
        ),
      ),
    );
  }
}
