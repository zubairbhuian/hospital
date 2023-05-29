import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(.4),
              child: Center(
                child: Container(
                    width: 100.w,
                    height: 100.w,
                    padding: const EdgeInsets.all(30),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.white),
                    child: const CircularProgressIndicator()),
              ),
            );
  }
}
// Placeholder()