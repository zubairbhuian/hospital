import 'package:get/get.dart';
import 'package:hospital/pages/application/index.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplicationController());
    // TODO: implement dependencies
  }
}
