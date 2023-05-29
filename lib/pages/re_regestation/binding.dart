import 'package:get/get.dart';
import 'controller.dart';


class ReRegestrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReRegestrationController());
  }
}
