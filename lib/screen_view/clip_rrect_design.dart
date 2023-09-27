import 'package:flutter/material.dart';

class CLipRRectDesign extends StatefulWidget {
  const CLipRRectDesign({super.key});

  @override
  State<CLipRRectDesign> createState() => _CLipRRectDesignState();
}

class _CLipRRectDesignState extends State<CLipRRectDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text("Clip Rounded Rect Design"),
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
                  child: ClipRRect(
                    clipper: RoundedRectangularShapeClipper(),
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

class RoundedRectangularShapeClipper extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    final width = size.width;
    final height = size.height;
    RRect rRect = RRect.fromLTRBR(width * 0.2, height * 0.02, width * 0.8,
        height * 0.7, Radius.circular(30));
    return rRect;
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    return false;
  }
}
