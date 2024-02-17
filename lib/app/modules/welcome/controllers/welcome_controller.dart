import 'package:get/get.dart';
import 'package:hospital/app/routes/app_pages.dart';


class WelcomeController extends GetxController {
  onGetStared() {
    // route change
    Get.offAllNamed(Routes.SIGN_IN);
    // Store the value (User is not new)
    
  }
}
