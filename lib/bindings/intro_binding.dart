import 'package:get/get.dart';
import 'package:hospital/controllers/intro_controller.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
    // TODO: implement dependencies
  }
}
