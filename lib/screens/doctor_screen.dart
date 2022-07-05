import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hospital/widgets/regular_text.dart';

import '../utils/app_color.dart';
import '../widgets/drawer/custom_drawer.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

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
      body: ListView(children: const [
        RegularText(
          text: 'Find Doctor',
          fontSize: 24,
          fontWeight: FontWeight.w700,
        )
      ]),
    );
  }
}
