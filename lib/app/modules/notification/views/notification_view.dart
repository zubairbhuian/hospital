import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital/app/core/config/color.dart';
import 'package:hospital/app/modules/notification/widgets/notification_card.dart';
import 'package:hospital/app/widgets/appbar.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Notification'),
        fgColor: kWhite,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 70),
        children:List.generate(5, (index) => const NotificationCard())),
    );
  }
}
