// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:hospital/pages/forget_pass/index.dart';
import 'package:hospital/pages/regestration/index.dart';

import '../../pages/application/index.dart';
import '../../pages/intro/index.dart';
import '../../pages/login/index.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const SIGN_IN = AppRoutes.SIGN_IN;
  static const APPLICATION = AppRoutes.Application;

  static List<GetPage> routes = [
    GetPage(
        name: INITIAL,
        page: () => const IntroScreen(),
        binding: IntroBinding()),
    GetPage(
        name: SIGN_IN,
        page: () => const LoginScreen(),
        binding: LogInBinding()),
    GetPage(
        name: APPLICATION,
        page: () => const ApplicationScreen(),
        binding: ApplicationBinding()),
    GetPage(
        name:AppRoutes.REGESTATION,
        page: () => const RegestrationScreen(),
        binding: RegestrationBinding()),
     GetPage(
        name:AppRoutes.FORGET_PASS,
        page: () => const ForgotPasswordScreen(),
        binding: ForgotPasswordBinding()),
  ];
}
