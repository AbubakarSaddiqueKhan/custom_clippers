import 'package:flutter/material.dart';

class FlutterFirstSlide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(width * 0.585, height * 0.051);
    path.lineTo(width * 0.135, height * 0.5);
    path.lineTo(width * 0.272, height * 0.64);
    path.lineTo(width * 0.86, height * 0.051);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class FlutterSecondLowerDarkSide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.341, height * 0.71);
    path.lineTo(width * 0.58, height * 0.95);
    path.lineTo(width * 0.87, height * 0.95);
    path.lineTo(width * 0.48, height * 0.57);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class FlutterThirdUpperSlide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.34, height * 0.71);
    path.lineTo(width * 0.48, height * 0.85);
    path.lineTo(width * 0.87, height * 0.46);
    path.lineTo(width * 0.59, height * 0.46);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
