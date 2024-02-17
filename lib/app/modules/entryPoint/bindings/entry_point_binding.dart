import 'package:get/get.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EntryPointController>(
      () => EntryPointController(),
    );
  }
}
