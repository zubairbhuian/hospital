import 'package:flutter/material.dart';
import 'package:hospital/app/core/config/color.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 44, bottom: 38),
      color: kDisabledColor,
      child: const ListTile(
        horizontalTitleGap: 15,
        leading: CircleAvatar(
          radius: 25,
        ),
        title: Text(
          'Zubair Bhuian',
          style: TextStyle(
              color: kTextColor, fontSize: 27, fontWeight: FontWeight.w600),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          "demo@gmail.com",
          style: TextStyle(
              color: kTextColor, fontSize: 13, fontWeight: FontWeight.w400),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
