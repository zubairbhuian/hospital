import 'package:flutter/material.dart';
import 'package:hospital/app/core/config/color.dart';
import 'package:hospital/app/core/config/style.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffEAEAEA)),
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 6),
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/icons/home/demo_notification.png')),
                    borderRadius: BorderRadius.circular(4),
                    color: kPrimaryColor),
              ),
              Expanded(
                child: Text(
                  'Doctor Information',
                  style: kBodyMedium,
                ),
              ),
              Text(
                '23m ago',
                style: kBodyMedium,
              )
            ],
          ),
          const Text(
            "New Doctor Coming",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'He is a good Doctor your expericne lof of good',
            style: kBodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '02 more notifcations',
            style: kBodyMedium,
          ),
        ],
      ),
    );
  }
}
