import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/app_color.dart';

void customSnackbar({required String msg,Color? color,ToastGravity? gravity}){
    Fluttertoast.showToast(
          backgroundColor:color?? AppColor.green,
          gravity:gravity?? ToastGravity.TOP,
          msg: 'Login Success');
}