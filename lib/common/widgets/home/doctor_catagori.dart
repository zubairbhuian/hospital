import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital/common/widgets/regular_text.dart';

import '../../utils/app_color.dart';

class DoctorCatagori extends StatelessWidget {
  final dynamic icon;
  final String text1;
  final String text2;
  final VoidCallback onTap;
  const DoctorCatagori({
    required this.icon,
    required this.text1,
    required this.text2,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xffEAEAEA)),
            borderRadius: BorderRadius.circular(80)),
        color: const Color(0xffFAFAFA),
        child: InkWell(
          borderRadius: BorderRadius.circular(80),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColor.green,
                child: FaIcon(
                  icon,
                  color: AppColor.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegularText(
                    text: text1,
                    fontWeight: FontWeight.w600,
                  ),
                  RegularText(text: text2, fontWeight: FontWeight.w600)
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
