import 'package:get/get.dart';

import '../home/view.dart';
import '../notification/view.dart';
import '../service/services_screen.dart';
import '../settings/view.dart';

class ApplicationController extends GetxController{
  int? pageIndex;
      final pages = [
      const ServicesScreen(),
      const HomeScreen(),
      const NotificationScreen(),
      const SettingsScreen(),
    ];
}