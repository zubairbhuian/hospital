import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 70,
          flexibleSpace: Container(
            // height: 108,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [AppColor.amber, AppColor.green],
                    begin: Alignment.bottomRight,
                    end: Alignment.topCenter)),
          ),
          elevation: 0,
          backgroundColor: AppColor.white,
          title: const Text(
            'Notification',
            style: TextStyle(
              color: AppColor.white,
            ),
          ),
        ),
    );
  }
}
