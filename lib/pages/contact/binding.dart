import 'package:get/get.dart';
import 'package:hospital/pages/intro/controller.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
    // TODO: implement dependencies
  }
}
