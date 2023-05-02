import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:hospital/widgets/regular_text.dart';

import '../utils/app_color.dart';
import '../widgets/drawer/custom_drawer.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Service Details',
          style: TextStyle(
            color: AppColor.white,
          ),
        ),
        actions: [
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
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const RegularText(
                  text: "Hospital Emergencies: What You Can Do",
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
              const SizedBox(height: 20),
              const RegularText(
                text:
                    "Dr. Gumoh Brian jon is a Urology Surgeon in Pegion Medical Collage Hospital and is affiliated with the multiple hospitals in the area leverage other's cross platform infomediaries with out of the box strategic theme areas. Seamless myocardinate goal oriented materials through user friendly niches.",
                color: AppColor.grayLite,
              ),
              const SizedBox(height: 20),
              const RegularText(
                  text:
                      "Enthusiastically cultivate frictionless channels for corporate markets. Progressively promote robust.",
                  color: AppColor.grayLite),
              const SizedBox(height: 20),
              Container(
                width: 200.sw,
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/service_1.png',
                        ))),
                child: Stack(alignment: Alignment.center, children: [
                  Positioned(
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Card(
                        color: const Color.fromARGB(43, 255, 255, 255),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: AppColor.amber),
                            borderRadius: BorderRadius.circular(80)),
                        child: InkWell(
                          child: const SizedBox(
                              child: Center(
                                  child: Icon(
                            Icons.play_arrow,
                            color: AppColor.white,
                          ))),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.topLeft,
                child: RegularText(
                    text: "Service Included",
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const RegularText(
                text:
                    "Seamless myocardinate goal oriented materials through user friendly niches.",
                color: AppColor.grayLite,
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.topLeft,
                child: RegularText(
                    text: "Some examples",
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const RegularText(
                  text:
                      "Seamless myocardinate goal oriented materials through user friendly niches. Medical Collage Hospital and is affiliated with the multiple. Medical Collage Hospital and is affiliated with the multiple.",
                  color: AppColor.grayLite),
              const SizedBox(height: 40),
              SizedBox(
                width: 199.sw,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        primary: AppColor.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0))),
                    onPressed: () {},
                    child: const RegularText(
                      color: AppColor.white,
                      text: 'Learn More',
                    )),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
