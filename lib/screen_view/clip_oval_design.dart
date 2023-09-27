import 'package:flutter/material.dart';

class ClipOvalDesign extends StatefulWidget {
  const ClipOvalDesign({super.key});

  @override
  State<ClipOvalDesign> createState() => _ClipOvalDesignState();
}

class _ClipOvalDesignState extends State<ClipOvalDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text("Clip Oval Design"),
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
                  height: 600,
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
                  height: 600,
                  child: ClipOval(
                    clipper: OvalShapeClipper(),
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

class OvalShapeClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Rect rect = Rect.fromLTWH(0, 0, width, height);

    return rect;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}



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