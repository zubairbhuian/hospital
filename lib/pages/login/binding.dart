import 'package:get/get.dart';
import 'package:doctor/pages/login/index.dart';


class LogInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInController());
    // TODO: implement dependencies
  }
}
