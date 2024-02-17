

import 'package:get/get.dart';

import '../base/api_service.dart';
import '../controller/base_controller.dart';

class BaseBinding extends Bindings {
  final ApiService apiService;

  BaseBinding({required this.apiService});

  @override
  void dependencies() {
    //Get.lazyPut(() => BaseController());
    Get.put(
      BaseController(apiService: apiService),
      permanent: true,
    );
  }
}