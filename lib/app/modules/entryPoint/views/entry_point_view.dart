import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointView extends GetView<EntryPointController> {
  const EntryPointView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EntryPointView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EntryPointView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
