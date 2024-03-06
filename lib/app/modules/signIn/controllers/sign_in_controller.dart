import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(text: 'admin@gmail.com');
  final TextEditingController passwordController = TextEditingController(text: '12345678');
}
