import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import '../core/utils/int_extensions.dart';
import '../core/config/color.dart';
import '../core/config/style.dart';
import '../core/utils/icons.dart';
import 'popup_dialogs.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final VoidCallback? onLeading;
  final double? preferredHeight;
  final List<Widget>? actions;
  final bool isShadow;
  final bool centerTitle;

  final bool hasActionBtn;
  final void Function()? actionBtnOnTap;
  final String actionBtnText;

  const CustomAppBar(
      {super.key,
      this.isShadow = false,
      this.centerTitle = true,
      this.title,
      this.onLeading,
      this.preferredHeight,
      this.actions,
      this.hasActionBtn = false,
      this.actionBtnOnTap,
      this.actionBtnText = 'Text'});
// Specify the desired height of the AppBar
  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? 66.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: const Color(
                0xffF2F8FD), // Adjust the background color of the AppBar
            boxShadow: isShadow ? [kAppbarShadow] : []),
        child: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          elevation: 0,
          centerTitle: centerTitle,
          leadingWidth: 80,
          backgroundColor: const Color(0xffF2F8FD),
          foregroundColor: kTextColor,
          titleTextStyle: kTitleLarge.copyWith(color: const Color(0xff2F2F2F)),
          // appbar leading
          leading: Center(
            child: CircleAvatar(
              radius: 24,
              backgroundColor: kWhite,
              child: SvgPicture.asset(IconsPath.userFilled),
            ),
          ),
          // appbar title
          title: title,
          // appbar actions),
          actions: [
            GestureDetector(
              onTap: () {
                PopupDialog.logOutDialog();
              },
              child: CircleAvatar(
                radius: 24,
                backgroundColor: kWhite,
                child: SvgPicture.asset(IconsPath.logout),
              ),
            ),
            20.width,
          ],
        ));
  }
}
