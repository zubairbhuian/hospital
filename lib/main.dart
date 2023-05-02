import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hospital/common/routes/pages.dart';

main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) => GetMaterialApp(
              initialRoute: AppPages.SIGN_IN,
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.green,
              ),
            )));
  }
}
