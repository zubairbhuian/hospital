import 'package:flutter/cupertino.dart';

class CustomAppbarShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0008333, size.height * 0.0033333);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.0238000, size.height * 0.8301333,
        size.width * 0.1252583, size.height * 0.8322167);
    path0.cubicTo(
        size.width * 0.3040083,
        size.height * 0.8322167,
        size.width * 0.6962833,
        size.height * 0.8350000,
        size.width * 0.8750333,
        size.height * 0.8350000);
    path0.quadraticBezierTo(size.width * 0.9767000, size.height * 0.8354167,
        size.width, size.height);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.0008333, size.height * 0.0033333);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}