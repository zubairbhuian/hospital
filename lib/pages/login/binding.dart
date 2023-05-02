import 'package:get/get.dart';
import 'package:hospital/pages/login/index.dart';


class LogInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInController());
    // TODO: implement dependencies
  }
}
