import 'package:flutter/material.dart';

class ClipRBorder extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    //........................... First Curve ............................//
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    //........................... Second Curve ............................//
    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);

    //........................... Last Curve ............................//
    final lastFirstCurve = Offset(size.width, size.height - 20);
    final lastLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(lastFirstCurve.dx, lastFirstCurve.dy,
        lastLastCurve.dx, lastLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
