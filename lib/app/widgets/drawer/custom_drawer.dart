import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital/app/core/config/color.dart';
import 'custom_drawer_header.dart';
import 'custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kWhite,
      child: Column(
        children: [
          const CustomDrawerHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.house, title: 'Home', onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.handHoldingHand,
                //     title: 'Service',
                //     onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.userDoctor, title: 'Doctor', onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.clock, title: 'Appointment', onTap: () {}),

                // const Divider(color: kDisabledColor,),
                // //  !2nd Section
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.user, title: 'Profile', onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.language, title: 'Language', onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.screwdriverWrench,
                //     title: 'Settings',
                //     onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.bell, title: 'Notification', onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.businessTime,
                //     title: 'Reminder',
                //     onTap: () {}),
                // CustomDrawerItem(
                //     icon: FontAwesomeIcons.filePrescription,
                //     title: 'My Prescription',
                //     onTap: () {}),
                // const Divider(color: kDisabledColor,),
                //  !#rd Section
                CustomDrawerItem(
                    icon: FontAwesomeIcons.lock,
                    title: 'Privacy Policy',
                    onTap: () {}),
                CustomDrawerItem(
                    icon: FontAwesomeIcons.idCardClip,
                    title: 'Terms & Conditions',
                    onTap: () {}),
                CustomDrawerItem(
                    icon: FontAwesomeIcons.headset,
                    title: 'Contact Us',
                    onTap: () {}),
                CustomDrawerItem(
                    icon: FontAwesomeIcons.arrowRightFromBracket,
                    title: 'Log Out',
                    onTap: () {
                      // FirebaseAuth.instance.signOut();

                      // if (FirebaseAuth.instance.currentUser == null) {
                      //   Get.off(() => const IntroScreen());
                      // }
                    }),
                const SizedBox(
                  height: 30,
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}



//  child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             user.email!,
//             style: const TextStyle(
//                 color: AppColor.green,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700),
//           ),
//           ElevatedButton.icon(
//               onPressed: () {
//                 firebase.signOut();

//                 Get.off(() => const IntroScreen());
//               },
//               icon: const Text('Logout'),
//               label: const Icon(Icons.logout))
//         ],
//       ),