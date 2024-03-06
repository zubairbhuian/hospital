import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/services_controller.dart';

class ServicesView extends GetView<ServicesController> {
  const ServicesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServicesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ServicesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
