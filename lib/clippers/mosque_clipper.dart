import 'package:flutter/material.dart';

class MosqueLeftPillarTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, height);
    path.conicTo(width * 0.5, 0, width, height, 1.5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MosqueLeftDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.lineTo(0, height);
    path.lineTo(width * 0.3, height);
    path.lineTo(width * 0.3, height * 0.4);
    path.conicTo(width * 0.5, height * 0.06, width * 0.7, height * 0.4, 1);
    path.lineTo(width * 0.7, height);
    path.lineTo(width, height);
    path.lineTo(width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MosqueGunbadClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, height);
    path.conicTo(width * 0.5, 0, width, height, 1.2);
    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
