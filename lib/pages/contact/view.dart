import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor/common/utils/app_color.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              width: double.infinity,
              height: 236,
              decoration: const BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18))),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 12),
                          child: GestureDetector(
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 16,
                            ),
                            onTap: () => Get.back(),
                          ),
                        ),
                        Center(
                            child: Text("Contact Us",
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w600,
                                )))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'images/yellow_hart.png',
                    width: 103.w,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              isThreeLine: true,
              leading: const Icon(
                Icons.person,
                color: AppColor.green,
                size: 24,
              ),
              title: Text(
                "Call",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text(
                "123-0123457\n0012-457901",
                style:TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              isThreeLine: true,
              leading: const Icon(
                Icons.email,
                color: AppColor.green,
                size: 24,
              ),
              title: Text(
                "Email",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text(
                "zubairbhuian@gmail.com\nbhuian@gmail.com",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              isThreeLine: true,
              leading: const Icon(
                Icons.location_city,
                color: AppColor.green,
                size: 24,
              ),
              title: Text(
                "Address",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text(
                "123/ A Street, Usa-1001",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              isThreeLine: true,
              leading: const Icon(
                Icons.location_city,
                color: AppColor.green,
                size: 24,
              ),
              title: Text(
                "Twitter",
                style:TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text(
                "http:// twitter.com",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              onTap: () {},
            ),
          ],
        ),
      );
}
