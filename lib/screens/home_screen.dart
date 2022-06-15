import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        'https://scontent.fdac80-1.fna.fbcdn.net/v/t1.6435-9/123042841_945908579151890_6246602248743437967_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE_H0d-mH39OysN5a0qVKJzONjtsS8E12I42O2xLwTXYuSdhNRxWIyj59WjUrCCHZGS3F2ibpUTzwGM7PXONha2&_nc_ohc=6f0kXyZml64AX9wBu_M&tn=h-uGHsxdg8zHKZc4&_nc_ht=scontent.fdac80-1.fna&oh=00_AT99wrS0nE13_YyuTYIvLy4BwuLBOIZk9lvMoT4pF54a2g&oe=62C913EB';

    return Scaffold(
      backgroundColor: AppColor.white,
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 7, left: 14),
          child: CircleAvatar(
            backgroundColor: AppColor.white,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
              ),
            ),
          ),
        ),
        title: const Text(
          'Zubair Bhuian',
          style: TextStyle(
            color: AppColor.textColor,
          ),
        ),
        actions: [
          IconButton(
              splashRadius: 25,
              onPressed: () {},
              icon: const Icon(Icons.search, color: AppColor.black)),
          Builder(
              builder: (context) => IconButton(
                  splashRadius: 25,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.notes,
                    color: AppColor.black,
                  ))),
        ],
      ),
      body: const Center(
        child: Text("This is  Page one"),
      ),
    );
  }
}
