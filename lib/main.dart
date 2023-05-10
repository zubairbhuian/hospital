import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hospital/common/routes/app_routes.dart';
import 'package:hospital/common/routes/pages.dart';

import 'common/store/config.dart';
import 'common/store/storage.dart';
import 'common/store/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Get.putAsync<StorageService>(() => StorageService().init());
  
  Get.put<ConfigStore>(ConfigStore());
  Get.put<UserStore>(UserStore());
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
              initialRoute: AppRoutes.INITIAL,
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.green,
              ),
              // home: ServiceDetailScreen(),
            )));
  }
}
