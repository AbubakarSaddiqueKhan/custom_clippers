import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/custom_clipper_class_design.dart';

class CustomClipperDesign extends StatefulWidget {
  const CustomClipperDesign({super.key});

  @override
  State<CustomClipperDesign> createState() => _CustomClipperDesignState();
}

class _CustomClipperDesignState extends State<CustomClipperDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text("Custom Clipper Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Original Size"),
                SizedBox(
                  width: 400,
                  height: 400,
                  // The clip rect is used to clip it's child in the rectangular shape
                  // in box protocol the rectangle is the default shape . So it can't effect the image
                  child: Image.asset(
                    "assets/images/cv.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Clipped Size"),
                SizedBox(
                  width: 400,
                  height: 400,
                  child: ClipPath(
                    clipper: LecturePracticeClipper(),
                    child: Image.asset(
                      "assets/images/cv.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyTiangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.5, 0);
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width * 0.5, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyPentagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.5, 0);
    path.lineTo(0, height * 0.3);
    path.lineTo(width * 0.2, height);
    path.lineTo(width * 0.8, height);
    path.lineTo(width, height * 0.3);
    path.lineTo(width * 0.5, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyRhombusClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.5, 0);
    path.lineTo(0, height * 0.5);
    path.lineTo(width * 0.5, height);
    path.lineTo(width, height * 0.5);
    path.lineTo(width * 0.5, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyMoonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();

    path.moveTo(width * 0.7, 0);
    path.conicTo(0, height * 0.5, width * 0.7, height, 1);
    path.conicTo(width * 0.3, height * 0.5, width * 0.7, 0, 1);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LecturePracticeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    // final secondPath = Path();
    // secondPath.moveTo(width * 0.5, 0);
    // secondPath.lineTo(0, height * 0.5);
    // secondPath.lineTo(width * 0.5, height);
    // secondPath.lineTo(width, height * 0.5);
    // secondPath.lineTo(width * 0.5, 0);
    // Path path = Path();
    // path.moveTo(width * 0.5, 0);
    // path.lineTo(0, height);
    // path.lineTo(width, height);
    // path.close();

    // Path path1 = Path()
    //   ..moveTo(0, height)
    //   ..lineTo(width * 0.5, 0)
    //   ..lineTo(0, height);
    // // ..lineTo(0, 0);

    // Path path2 = Path()
    //   ..moveTo(width, 0)
    //   ..lineTo(width * 0.5, height)
    //   ..lineTo(width, height)
    //   ..lineTo(width, 0);

    Path path1 = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, 0);

    Path path2 = Path()
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(0, 0);

    path1.addPath(path2, Offset(size.width / 2, 0));

    return path1;

    // add arc is used to clip the widget in the shape of the arc
    // path.addArc(
    //     Rect.fromLTWH(0, 0, width, height), degToRadian(90), degToRadian(180));

    // add oval is used to clip the widget in the oval shape
    // path.addOval(Rect.fromLTWH(0, 0, width, height));
    // add path is used to add a subpath or subpath or new path in the current path
    // path.addPath(secondPath, Offset(0, 0));

    // add polygon is used add the polygon or clip the widget in the shape of polygon
    // the polygon can be made using the list of offset or point's of x & y

    // path.addPolygon([
    //   Offset(width * 0.5, 0),
    //   Offset(0, height * 0.5),
    //   Offset(width * 0.5, height),
    //   Offset(width, height * 0.5),
    //   // Offset(width * 0.5, 0)
    // ], true);

    // add rect is used to add the rectangle or clip the widget in the rectangular shape
    // path.addRect(
    //     Rect.fromLTWH(width * 0.5, height * 0.5, width * 0.5, height * 0.5));

    //  add RRect is used to add the rectangle with the rounded corner's
    // path.addRRect(RRect.fromLTRBAndCorners(
    //     width * 0.2, height * 0.2, width * 0.8, height * 0.8,
    //     bottomLeft: Radius.circular(20),
    //     bottomRight: Radius.circular(30),
    //     topLeft: Radius.circular(10),
    //     topRight: Radius.circular(40)));

    // arc to is used to add an arc to the current path or clip the widget based on the given value of the arc
    // It is same as the add arc but it is a special property of forceMoveTo which takes a boolean value
    // According to the official documentation
    // If the forceMoveTo argument is false, adds a straight line segment and an arc segment.
    // If the forceMoveTo argument is true, starts a new sub-path consisting of an arc segment.

    // path.arcTo(
    //     Rect.fromLTWH(width * 0.1, height * 0.1, width * 0.9, height * 0.9),
    //     degToRadian(90),
    //     degToRadian(-180),
    //     false);

    // close is used to close the path it will match the end of the ending point to the start of the starting or beginning point
    // path.close();

    // path.moveTo(0, height);

    // quadratic bazier is used to clip the child in the curved shape
    // the curve can be made using the point of gravity or point of attraction or control point
    // As we know that the line tries to become as straight as possible the control point is used to attract the line toward's it self that cause bend in the line or clipper path
    // path.moveTo(0, height);
    // path.quadraticBezierTo(width * 0.5, 0, width, height);
    // path.reset();
    // the reset method is used to reset or clear the path and it will delete all of it's data and move the point toward's the starting point or the origin which is situated at the top left of the screen

    // conic to is same as the quadratic bezier but it has the property of the weight
    // The weight property is used the projection or the height of the curve
    // path.moveTo(0, height);
    // If the weight is less than 1 than it will make the ellipse shape
    // if the weight is equal's to 1 then it will make parabola
    // If the weight is greater than 1 then it will make hyperbola shape
    // path.moveTo(0, height);
    // path.conicTo(width * 0.5, 0, width, height, 5);
    // contain's property is used to check whether these point's that are given in the offset are included in the the clipped path or shape or not
    // it will return boolean value either true or false based on the result
    // print(path.contains(Offset(width * 0.1, height * 0.1)));

    // path.lineTo(0, height );
    // cubic to is same as the quadratic bazier but the only difference between these two is that the bazier to contain's only one control point or the point of gravity or the point of attraction but cubic to has two point's of attraction or control point
    // path.moveTo(0, height * 0.5);
    // path.cubicTo(width * 0.25, 0, width * 0.75, height, width, height * 0.5);

    // path.moveTo(0, height * 0.3);
    // path.lineTo(0, height);
    // path.lineTo(width * 0.6, height);
    // path.lineTo(width, height * 0.3);
    // get bound is used to get the point's or the size of the rectangle from the origin to the current point
    // Rect.fromLTRB(400.0, 400.0, 400.0, 400.0)  will be given as the result
    // print(path.getBounds());

    // return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

double degToRadian(int degree) {
  return (pi / 180) * degree;
}
