import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff1EA922);
const Color kTitleColor = Color(0xff3C3D3F);
const Color kTextColor = Color(0xff3C3D3F);
const Color kTextColorLight = Color(0xff8E9195);


const Color kDisabledColor = Color.fromARGB(255, 229, 229, 229);
const Color kDisabledTextColor = Color.fromARGB(255, 207, 207, 207);

// common
const Color kScaffoldBGColor = Colors.white;
const Color kDangerColor = Color(0xffF53D43);
const Color kSuccessColor = Color(0xff2FCC40);
const Color kInfoColor = Color.fromARGB(255, 2, 120, 255);

// override color
const Color kWhite = Colors.white;
const Color kRed = Colors.red;
const Color kBlack = Colors.black;
const Color kYellow = Color(0xffC4CD26);

// gradiant color
// const LinearGradient kBtnGradiantColor = LinearGradient(
//   colors: [kBrandColor, Color(0xffFFDE17)],
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
// );
// const LinearGradient kAppbarGradiantColor = LinearGradient(
//   colors: [kSecondaryColor, kBlack],
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
// );
//shadow
BoxShadow kCardShadow = const BoxShadow(
  color: Color.fromRGBO(34, 34, 34, 0.086),
  offset: Offset(4, 8),
  blurRadius: 24,
  spreadRadius: 4,
);

BoxShadow kbtnShadow = BoxShadow(
  offset: const Offset(1, 4),
  blurRadius: 8,
  spreadRadius: 0,
  color: const Color(0xff000000).withOpacity(0.2),
);
BoxShadow kbtnShadow2 = BoxShadow(
  offset: const Offset(1, 7),
  blurRadius: 8,
  spreadRadius: 0,
  color: const Color(0xff000000).withOpacity(0.24),
);

BoxShadow kAppbarShadow = BoxShadow(
  offset: const Offset(1, 3),
  blurRadius: 8,
  spreadRadius: 0,
  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
);
BoxShadow kSearchBarShadow = BoxShadow(
  offset: const Offset(1, 3),
  blurRadius: 8,
  spreadRadius: 5,
  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
);
