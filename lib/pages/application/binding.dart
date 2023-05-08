import 'package:get/get.dart';
import 'package:hospital/pages/application/index.dart';
import 'package:hospital/pages/notification/index.dart';
import 'package:hospital/pages/service/controller.dart';
import 'package:hospital/pages/settings/index.dart';

import '../home/controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplicationController());
    Get.lazyPut(() => ServiceController());
    Get.lazyPut(() => NotificationController());
    Get.lazyPut(() => SettingsController());
    Get.lazyPut(() => HomeController());
  }
}
