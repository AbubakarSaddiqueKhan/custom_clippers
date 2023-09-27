import 'package:flutter/material.dart';

class ExploreClippers extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    // move to is used to move the focus
    // by default the focus or the image start's from the top left corner
    path.moveTo(width * 0.5, height * 0.5);
    // the half width and the half height will move the focus to the center of that shape if shape is circle

    // line to method is used to draw a line from the current point to the given point
    path.lineTo(0, height * 0.2);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
