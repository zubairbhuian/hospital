import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital/app/routes/app_pages.dart';


import '../services/base/preferences.dart';

class RouteWlcomMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Preferences.isUserSignin) {
      // user is Signin
      // return should be application screen
      // kLogger.e("user has token");
      return const RouteSettings(name: Routes.ENTRY_POINT);
    } else {
      // user token is empty
      // return should be login screen
      // kLogger.e("user token is empty");
      return null;
    }
  }
}
