import 'package:flutter/material.dart';
import 'package:hospital/widgets/drawer/custom_drawer.dart';
import 'package:hospital/widgets/regular_text.dart';
import 'package:hospital/widgets/services/our_services.dart';
import 'package:hospital/widgets/services/populer_services.dart';

import '../utils/app_color.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        'https://scontent.fdac80-1.fna.fbcdn.net/v/t1.6435-9/123042841_945908579151890_6246602248743437967_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE_H0d-mH39OysN5a0qVKJzONjtsS8E12I42O2xLwTXYuSdhNRxWIyj59WjUrCCHZGS3F2ibpUTzwGM7PXONha2&_nc_ohc=6f0kXyZml64AX9wBu_M&tn=h-uGHsxdg8zHKZc4&_nc_ht=scontent.fdac80-1.fna&oh=00_AT99wrS0nE13_YyuTYIvLy4BwuLBOIZk9lvMoT4pF54a2g&oe=62C913EB';
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
        leading: Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 7, left: 14),
          child: CircleAvatar(
            backgroundColor: AppColor.white,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
              ),
            ),
          ),
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
          child: Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: RegularText(
                  text: 'Our Servics',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ?OurService
              OurServices(),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RegularText(
                  text: 'Popular Services',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // ?PopulerService
              SizedBox(
                height: 15,
              ),
              PopulerService(),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
