import 'package:flutter/material.dart';

class LoginPageHexagonShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(width * 0.5, 0);
    path.lineTo(0, height * 0.25);
    path.lineTo(0, height * 0.75);
    path.lineTo(width * 0.5, height);
    path.lineTo(width, height * 0.75);
    path.lineTo(width, height * 0.25);
    path.lineTo(width * 0.5, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ContainerClipperClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(width * 0.9, 0);
    path.moveTo(width * 0.01, height * 0.85);
    path.lineTo(0, height * 0.95);
    path.lineTo(width * 0.1, height);
    path.lineTo(width, height * 0.1);
    path.lineTo(width, 0);
    path.lineTo(width * 0.9, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
