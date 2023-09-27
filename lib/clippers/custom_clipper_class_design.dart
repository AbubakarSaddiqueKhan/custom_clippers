import 'package:flutter/material.dart';

class CustomClipperDesignClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    //  By default the painting or drawing start's from the origin which is formed at the top left most side of teh screen

    path.moveTo(width / 2, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
