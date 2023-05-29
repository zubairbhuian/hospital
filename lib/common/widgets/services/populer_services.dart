import 'package:flutter/material.dart';
import 'package:doctor/common/utils/app_color.dart';

import '../custom_text.dart';

class PopulerService extends StatelessWidget {
  const PopulerService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: AppColor.borderColor,
          )),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(5),
                  leading: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('images/service_ps1.png')),
                  title: const RegularText(text: 'Temporary filling'),
                  subtitle: const RegularText(
                    text: "460",
                    fontWeight: FontWeight.w600,
                  ),
                  trailing: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80)))),
                    child: const Text(
                      'Details',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {},
                  ),
                  onTap: () {},
                ),
              ),
              const Divider(
                color: AppColor.textColor,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(5),
                  leading: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('images/service_ps2.png')),
                  title:
                      const RegularText(text: 'Temporary filling \n with MTA'),
                  subtitle: const RegularText(
                    text: "650",
                    fontWeight: FontWeight.w600,
                  ),
                  trailing: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80)))),
                    child: const Text(
                      'Details',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {},
                  ),
                  onTap: () {},
                ),
              ),
              const Divider(
                color: AppColor.textColor,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(5),
                  leading: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('images/service_ps3.png')),
                  title:
                      const RegularText(text: 'Composite filling \n Class I'),
                  subtitle: const RegularText(
                    text: "360",
                    fontWeight: FontWeight.w600,
                  ),
                  trailing: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80)))),
                    child: const Text(
                      'Details',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {},
                  ),
                  onTap: () {},
                ),
              ),
              const Divider(
                color: AppColor.textColor,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(5),
                  leading: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('images/service_ps4.png')),
                  title: const RegularText(text: 'Cosmetic filling'),
                  subtitle: const RegularText(
                    text: "260",
                    fontWeight: FontWeight.w600,
                  ),
                  trailing: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80)))),
                    child: const Text(
                      'Details',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {},
                  ),
                  onTap: () {},
                ),
              ),
              const Divider(
                color: AppColor.textColor,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(5),
              leading: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/service_ps5.png')),
              title: const RegularText(text: 'MOD fillings'),
              subtitle: const RegularText(
                text: "260",
                fontWeight: FontWeight.w600,
              ),
              trailing: OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)))),
                child: const Text(
                  'Details',
                  style: TextStyle(color: AppColor.textColor),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
