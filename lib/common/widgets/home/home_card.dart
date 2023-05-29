import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/app_color.dart';
import '../custom_text.dart';

class HomeCard extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final dynamic icon;
  const HomeCard({Key? key, required this.text, required this.onTap, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.0),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 10, right: 10),
              child: Column(children: [
                FaIcon(
                  icon,
                  color: AppColor.green,
                  size: 36,
                ),
                const SizedBox(
                  height: 15,
                ),
                RegularText(
                  text: text,
                )
              ]),
            ),
          ),
        ),
      );
}
