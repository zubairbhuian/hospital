import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../common/utils/app_color.dart';
import '../../common/widgets/custom_text.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.textColor,
              size: 16,
            ),
            onTap: () => Get.back(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
          child: Column(
            children: [
              const Image(image: AssetImage('images/about.png')),
              const RegularText(
                text: "Dementia Hospital",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                  "Dementia Hospital is a ground breaking initiative to favilitate the next generation of heathcare for USA. At Dementia Hospital we offer an online based doctors appointment service with the facility of an electronic personal health record sysetm. the first of its kind in our country, on both Web and Mobile app Paltform.",
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grayLite)),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(4),
                title: const RegularText(
                  text: 'Privacy Policy',
                  fontWeight: FontWeight.w600,
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: AppColor.green, size: 16),
                onTap: () {},
              ),
              ListTile(
                focusColor: Colors.red,
                contentPadding: const EdgeInsets.all(4),
                title: const RegularText(
                  text: 'Terms and Conditions',
                  fontWeight: FontWeight.w600,
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: AppColor.green, size: 16),
                onTap: () {},
              )
            ],
          ),
        ),
      );
}
