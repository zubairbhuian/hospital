import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:hospital/app/core/config/color.dart';
import 'package:hospital/app/core/config/style.dart';
import 'package:hospital/app/core/utils/int_extensions.dart';
import 'package:hospital/app/modules/home/widgets/treatment_card.dart';
import 'package:hospital/app/widgets/appbar.dart';
import 'package:hospital/app/widgets/drawer/custom_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(
        title: Text('EntryPointView'),
        centerTitle: true,
        fgColor: kWhite,
        isPrimary: true,
        bgColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headLine
            Text(
              "Find My Medical",
              style: kHeadlineLarge,
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.phone),
                    label: const Text('Emargency'),
                  ),
                ),
                12.width,
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.calendar),
                    label: const Text('Appointment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kTextColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            StaggeredGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(
                controller.categoryList.length,
                (index) => StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 14),
                    decoration: BoxDecoration(
                        border: Border.all(color: kDisabledColor),
                        color: kWhite,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(controller.categoryList[index].icon),
                          15.height,
                          Text(controller.categoryList[index].text),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'How do you feel today?',
              style: kHeadlineMedium,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(800.0)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(800.0),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          bottom: 25.5, top: 25.5, left: 16, right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              width: 42,
                              height: 42,
                              image:
                                  AssetImage('assets/icons/home/migraine.png')),
                          Text('Cold')
                        ],
                      ),
                    ),
                    onTap: () {
                      // print(demo.currentContext?.size);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "30+ basic treatment of Cold",
                style: kTitleMedium,
              ),
            ),
            ...List.generate(4, (index) => const TreatmentCard(
              type: 'Treatment',
              title: '10 Tips to Prevent The Common Cold',
              name: 'Dr. Muhib',
              date: 'Dec 3, 2020',
              img: 'assets/icons/home/home_t1.png',

            ))

          ],
        ).marginOnly(bottom: 70),
      ),
    );
  }
}
