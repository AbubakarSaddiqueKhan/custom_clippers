import 'package:flutter/material.dart';

class HouseTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.5, 0);
    path.lineTo(0, height);
    path.lineTo(width, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
