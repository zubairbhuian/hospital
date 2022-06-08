
import 'package:flutter/material.dart';
import 'package:hospital/screens/loging_screen.dart';
import 'package:hospital/screens/regestration_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) =>
      isLogin == true ? LoginScreen(onClickedSignUp: toggle) : RegestrationScreen(onClickedSignIn: toggle);

  void toggle() => setState(() {
        isLogin = !isLogin;
      });
}