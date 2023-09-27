import 'package:flutter/material.dart';

class CustomDollFrockDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(width * 0.4, 0);
    path.lineTo(0, height);

    path.lineTo(width * 0.05, height * 0.98);
    path.lineTo(width * 0.055, height);
    path.lineTo(width * 0.13, height);

    path.lineTo(width * 0.16, height * 0.98);
    path.lineTo(width * 0.165, height);
    path.lineTo(width * 0.2, height);

    path.lineTo(width * 0.25, height * 0.98);
    path.lineTo(width * 0.255, height);

    path.lineTo(width * 0.52, height);
    path.lineTo(width * 0.55, height * 0.98);
    path.lineTo(width * 0.555, height);

    path.lineTo(width * 0.72, height);

    path.lineTo(width * 0.075, height * 0.98);
    path.lineTo(width * 0.0755, height);
    path.lineTo(width * 0.82, height);

    path.lineTo(width * 0.85, height * 0.98);
    path.lineTo(width * 0.855, height);
    path.lineTo(width * 0.92, height);

    path.lineTo(width * 0.95, height * 0.98);
    path.lineTo(width * 0.955, height);

    path.lineTo(width, height);
    path.lineTo(width * 0.6, 0);
    path.lineTo(width * 0.4, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomShirtDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    Path path = Path();

    // path.moveTo(width * 0.4, 0);
    // path.lineTo(width * 0.3, height);

    // path.lineTo(width * 0.45, height * 0.98);
    // path.lineTo(width * 0.455, height);
    // path.lineTo(width * 0.53, height);

    // path.lineTo(width * 0.56, height * 0.98);
    // path.lineTo(width * 0.565, height);
    // path.lineTo(width * 0.7, height);

    // path.lineTo(width * 0.75, height * 0.98);
    // path.lineTo(width * 0.755, height);

    // path.lineTo(width * 0.7, height);
    // path.lineTo(width * 0.65, 0);
    // path.lineTo(width * 0.35, 0);

    path.moveTo(width * 0.3, 0);
    path.lineTo(0, height);

    path.lineTo(width * 0.05, height * 0.98);
    path.lineTo(width * 0.055, height);
    path.lineTo(width * 0.13, height);

    path.lineTo(width * 0.16, height * 0.98);
    path.lineTo(width * 0.165, height);
    path.lineTo(width * 0.2, height);

    path.lineTo(width * 0.25, height * 0.98);
    path.lineTo(width * 0.255, height);

    path.lineTo(width * 0.52, height);
    path.lineTo(width * 0.55, height * 0.98);
    path.lineTo(width * 0.555, height);

    path.lineTo(width * 0.72, height);

    path.lineTo(width * 0.075, height * 0.98);
    path.lineTo(width * 0.0755, height);
    path.lineTo(width * 0.82, height);

    path.lineTo(width * 0.85, height * 0.98);
    path.lineTo(width * 0.855, height);
    path.lineTo(width * 0.92, height);

    path.lineTo(width * 0.95, height * 0.98);
    path.lineTo(width * 0.955, height);

    path.lineTo(width, height);
    path.lineTo(width * 0.7, 0);
    path.lineTo(width * 0.4, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class LeftHand extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    Path path = Path();

    path.moveTo(width * 0.1, 0);
    path.lineTo(0, height * 0.1);
    path.lineTo(width * 0.9, height);
    path.lineTo(width, height * 0.9);
    path.lineTo(width * 0.1, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
