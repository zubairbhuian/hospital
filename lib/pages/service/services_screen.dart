import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


import '../../common/utils/app_color.dart';
import '../../common/widgets/custom_text.dart';
import '../../common/widgets/drawer/custom_drawer.dart';
import '../../common/widgets/services/our_services.dart';
import '../../common/widgets/services/patioent_reviews.dart';
import '../../common/widgets/services/populer_services.dart';


class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

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

              PatientReviews(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
