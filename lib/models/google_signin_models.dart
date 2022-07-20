
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInContoller extends GetxController {
  final _googlesignin = GoogleSignIn();
  var googleAccound = Rx<GoogleSignInAccount?>(null);
  login() async {
    googleAccound.value = await _googlesignin.signIn();
  }

  logOut()async{
    googleAccound.value = await _googlesignin.signOut();
  }
}
