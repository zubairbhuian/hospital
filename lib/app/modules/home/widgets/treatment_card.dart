import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital/app/core/config/color.dart';
import 'package:hospital/app/core/config/style.dart';

class TreatmentCard extends StatelessWidget {
  final String img;
  final String type;
  final String title;
  final String name;
  final String date;
  final void Function()? onTap;
  const TreatmentCard(
      {super.key,
      required this.img,
      required this.type,
      required this.title,
      required this.name,
      required this.date, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.transparent,
        height: 109,
        child: Row(
          children: [
            Image(width: 125, image: AssetImage(img)),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: kLabelSmall.copyWith(color: kPrimaryColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kTitleMedium,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  'By $name  $date',
                  style: kBodyLarge.copyWith(color: kTextColorLight),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
