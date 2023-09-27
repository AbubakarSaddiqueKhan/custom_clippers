import 'package:flutter/material.dart';

class MountainClipper extends CustomClipper<Path> {
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

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, height);
    path.quadraticBezierTo(width * 0.5, 0, width, height);
    // path.quadraticBezierTo(0.75, 0, width, height);

    // path.cubicTo(width * 0.15, 0, width * 0.24, height, width * 0.3, height);
    // path.cubicTo(width * 0.42, 0, width * 0.6, height, width * 0.7, height);
    // path.cubicTo(width * 0.72, 0, width * 0.86, height, width, height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
