import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital/app/core/config/color.dart';

class CustomDrawerItem extends StatelessWidget {
  final String title;
  final dynamic icon;
  final VoidCallback onTap;
  const CustomDrawerItem(
      {required this.icon, required this.title, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        horizontalTitleGap: 10,
        leading: FaIcon(
          icon,
          size: 22,
          color: kPrimaryColor,
        ),
        selectedTileColor: Colors.red,
        title: Text(
          title,
          style: const TextStyle(
              color: kTextColor,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
        onTap: onTap,
      );
}
