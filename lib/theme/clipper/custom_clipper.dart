import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  //
  @override
  Path getClip(Size size) {
    final topHeight = size.height - 88;

    final controllPoint = Offset(size.width * 0.7, topHeight / 1.5);
    final endPoint = Offset(size.width, topHeight);

    Path path = Path()
      ..moveTo(size.width * 0.6, 0)
      ..quadraticBezierTo(
        controllPoint.dx,
        controllPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
