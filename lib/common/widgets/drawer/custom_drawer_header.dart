import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 44, bottom: 38),
      color: const Color(0xffFAFAFA),
      child: const ListTile(
        horizontalTitleGap: 15,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://scontent.fdac24-1.fna.fbcdn.net/v/t1.6435-9/123042841_945908579151890_6246602248743437967_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE_H0d-mH39OysN5a0qVKJzONjtsS8E12I42O2xLwTXYuSdhNRxWIyj59WjUrCCHZGS3F2ibpUTzwGM7PXONha2&_nc_ohc=pvHoI1IHHNQAX_6V14x&tn=d8aS8bRUYd9yf0TT&_nc_ht=scontent.fdac24-1.fna&oh=00_AfA4FuEtBgIHgjAQLhXzCYcWZZTsKwl-OCx-lPIg266vwg&oe=63898EEB'),
        ),
        title: Text(
          'Zubair Bhuian',
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 27,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Demo",
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
