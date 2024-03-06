import 'package:get/get.dart';
import 'package:hospital/app/modules/home/views/home_view.dart';
import 'package:hospital/app/modules/notification/views/notification_view.dart';
import 'package:hospital/app/modules/services/views/services_view.dart';
import 'package:hospital/app/modules/settings/views/settings_view.dart';
// import 'package:hospital/app/modules/entryPoint/views/home_view.dart';
// import 'package:hospital/app/modules/entryPoint/views/notification_view.dart';
// import 'package:hospital/app/modules/entryPoint/views/services_view.dart';
// import 'package:hospital/app/modules/entryPoint/views/settings_view.dart';

class EntryPointController extends GetxController {
    int pageIndex =1;
      final pages = [
        const ServicesView(),
        const HomeView(),
        const NotificationView(),
        const SettingsView()
    ];
}
