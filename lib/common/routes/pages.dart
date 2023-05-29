// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:doctor/common/middlewares/router_welcome.dart';
import 'package:doctor/pages/forget_pass/index.dart';
import 'package:doctor/pages/regestration/index.dart';

import '../../pages/application/index.dart';
import '../../pages/intro/index.dart';
import '../../pages/login/index.dart';
import '../../pages/re_regestation/index.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const SIGN_IN = AppRoutes.SIGN_IN;
  static const APPLICATION = AppRoutes.Application;

  static List<GetPage> routes = [
    GetPage(
        name: INITIAL,
        page: () => const IntroScreen(),
        binding: IntroBinding(),
        middlewares:[ RouteWlcomMiddleware(priority: 1)]
        ),
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
        name:AppRoutes.RE_REGESTATION,
        page: () => const ReRegestrationScreen(),
        binding: ReRegestrationBinding()),
     GetPage(
        name:AppRoutes.FORGET_PASS,
        page: () => const ForgotPasswordScreen(),
        binding: ForgotPasswordBinding()),
  ];
}
