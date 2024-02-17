import 'package:get/get.dart';

import '../controllers/forget_passwort_controller.dart';

class ForgetPasswortBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetPasswortController>(
      () => ForgetPasswortController(),
    );
  }
}
