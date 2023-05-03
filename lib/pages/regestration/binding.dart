import 'package:get/get.dart';
import 'package:hospital/pages/regestration/index.dart';

class RegestrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegestrationController());
  }
}
