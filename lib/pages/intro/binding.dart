import 'package:get/get.dart';
import 'package:hospital/pages/intro/controller.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
    // TODO: implement dependencies
  }
}
