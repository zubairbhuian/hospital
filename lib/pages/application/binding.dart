import 'package:get/get.dart';
import 'package:doctor/pages/application/index.dart';
import 'package:doctor/pages/notification/index.dart';
import 'package:doctor/pages/service/controller.dart';
import 'package:doctor/pages/settings/index.dart';

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
