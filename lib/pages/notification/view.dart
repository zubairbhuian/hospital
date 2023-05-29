import 'package:flutter/material.dart';


import '../../common/utils/app_color.dart';
import '../../common/widgets/custom_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text(
          'Notification',
          style: TextStyle(
            color: AppColor.white,
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffEAEAEA)),
                color: const Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  horizontalTitleGap: 7,
                  contentPadding: const EdgeInsets.all(0),
                  minLeadingWidth: 18,
                  minVerticalPadding: 0,
                  leading: Container(
                    margin: const EdgeInsets.only(top: 3),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/demo_notification.png')),
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.green),
                  ),
                  title: const RegularText(
                    text: 'Doctor Information',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  trailing: const RegularText(
                    text: '23m ago',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "New Doctor Coming",
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const RegularText(
                  text: 'He is a good Doctor your expericne lof of good',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColorLite,
                ),
                const SizedBox(
                  height: 10,
                ),
                const RegularText(
                  text: '02 more notifcations',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColorLite,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffEAEAEA)),
                color: const Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  horizontalTitleGap: 7,
                  contentPadding: const EdgeInsets.all(0),
                  minLeadingWidth: 18,
                  minVerticalPadding: 0,
                  leading: Container(
                    margin: const EdgeInsets.only(top: 3),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/demo_notification.png')),
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.green),
                  ),
                  title: const RegularText(
                    text: 'Doctor Information',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  trailing: const RegularText(
                    text: '23m ago',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "New Doctor Coming",
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const RegularText(
                  text: 'He is a good Doctor your expericne lof of good',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColorLite,
                ),
                const SizedBox(
                  height: 10,
                ),
                const RegularText(
                  text: '02 more notifcations',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColorLite,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffEAEAEA)),
                color: const Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  horizontalTitleGap: 7,
                  contentPadding: const EdgeInsets.all(0),
                  minLeadingWidth: 18,
                  minVerticalPadding: 0,
                  leading: Container(
                    margin: const EdgeInsets.only(top: 3),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/demo_notification.png')),
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.green),
                  ),
                  title: const RegularText(
                    text: 'Doctor Information',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  trailing: const RegularText(
                    text: '23m ago',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "New Doctor Coming",
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const RegularText(
                  text: 'He is a good Doctor your expericne lof of good',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColorLite,
                ),
                const SizedBox(
                  height: 10,
                ),
                const RegularText(
                  text: '02 more notifcations',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColorLite,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
