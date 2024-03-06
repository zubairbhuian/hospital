import 'package:get/get.dart';
import 'package:hospital/app/modules/home/controllers/home_controller.dart';
import 'package:hospital/app/modules/notification/controllers/notification_controller.dart';
import 'package:hospital/app/modules/services/controllers/services_controller.dart';
import 'package:hospital/app/modules/settings/controllers/settings_controller.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
    Get.lazyPut<NotificationController>(
      () => NotificationController(),
    );
    Get.lazyPut<ServicesController>(
      () => ServicesController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<EntryPointController>(
      () => EntryPointController(),
    );
  }
}
