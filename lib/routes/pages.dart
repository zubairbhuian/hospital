// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:hospital/bindings/intro_binding.dart';
import 'package:hospital/views/intro/introduction_screen.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const SIGN_IN = AppRoutes.SIGN_IN;
  static const Application = AppRoutes.Application;

  static List<GetPage> routes = [
    GetPage(name: INITIAL, 
    page: () => const IntroScreen(),
    binding: IntroBinding())
  ];
}
