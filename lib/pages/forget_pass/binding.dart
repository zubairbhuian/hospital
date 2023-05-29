import 'package:get/get.dart';
import 'package:doctor/pages/forget_pass/controller.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswardController());
  }
}
