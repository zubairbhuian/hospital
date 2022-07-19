import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital/screens/service_detail_screen.dart';

import '../../utils/app_color.dart';
import '../regular_text.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 5 / 6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2),
      itemBuilder: (contex, index) => Card(
        child: InkWell(
          child: Container(
            height: 210,
            width: 182,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(0, 0, 0, 0.56), BlendMode.darken),
                    image: AssetImage('images/service_1.png'))),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: RegularText(
                  text: 'Hospital Emergencies: What You Can Do',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          onTap: () => Get.to(const ServiceDetailScreen()),
        ),
      ),
    );
  }
}
