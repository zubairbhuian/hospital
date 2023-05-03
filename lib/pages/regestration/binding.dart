import 'package:get/get.dart';

import 'controller.dart';

class RegestrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegestrationController());
  }
}
