import 'package:get/get.dart';
import 'package:doctor/pages/intro/controller.dart';

class DoctoeProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
    // TODO: implement dependencies
  }
}
