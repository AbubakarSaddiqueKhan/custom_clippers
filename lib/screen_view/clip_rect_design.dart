import 'package:flutter/material.dart';

class CLipRectDesign extends StatefulWidget {
  const CLipRectDesign({super.key});

  @override
  State<CLipRectDesign> createState() => _CLipRectDesignState();
}

class _CLipRectDesignState extends State<CLipRectDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Rect Design"),
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
                  child: ClipRect(
                    clipper: RectangularShapeClipper(),
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

class RectangularShapeClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Rect rect = Rect.fromLTWH(width * 0.5, height * 0.15, width, height);
    // Rect rect = Rect.fromCenter(
    //     center: Offset(width * 0.5, height * 0.35),
    //     width: width * 0.5,
    //     height: height * 0.5);
    // Rect rect = Rect.fromCircle(
    //     center: Offset(width * 0.5, height * 0.35), radius: width * 0.25);
    // Rect rect =
    //     Rect.fromLTRB(width * 0.25, height * 0.1, width * 0.75, height * 0.7);
    // Rect rect = Rect.fromPoints(
    //     Offset(width * 0.1, height * 0.05), Offset(width * 0.8, height * 0.75));

    return rect;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}



    // You can also make the rectangle from from different style or shapes or ways


  // The clip rect is used to clip it's child in the rectangular shape
                  // in box protocol the rectangle is the default shape . So it can't effect the image