import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/custom_clipper_class_design.dart';
import 'package:flutter_clipers_design/screen_view/custom_doll_design.dart';

class CustomClipperDollDesign extends StatefulWidget {
  const CustomClipperDollDesign({super.key});

  @override
  State<CustomClipperDollDesign> createState() =>
      _CustomClipperDollDesignState();
}

class _CustomClipperDollDesignState extends State<CustomClipperDollDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          title: Text("Custom Clipper Doll Design"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            // left leg
            Positioned(
                left: screenWidth * 0.47,
                top: clientHeight * 0.65,
                child: Container(
                  color: Colors.grey.shade300,
                  height: clientHeight * 0.2,
                  width: screenWidth * 0.01,
                )),
            Positioned(
                left: screenWidth * 0.47,
                top: clientHeight * 0.85,
                child: Container(
                  width: screenWidth * 0.01,
                  height: clientHeight * 0.015,
                  color: Colors.black,
                )),
            Positioned(
                left: screenWidth * 0.47,
                top: clientHeight * 0.863,
                child: Container(
                  width: screenWidth * 0.017,
                  height: clientHeight * 0.015,
                  color: Colors.grey,
                )),
            // right leg
            Positioned(
                left: screenWidth * 0.52,
                top: clientHeight * 0.65,
                child: Container(
                  color: Colors.grey.shade300,
                  height: clientHeight * 0.2,
                  width: screenWidth * 0.01,
                )),
            Positioned(
                left: screenWidth * 0.52,
                top: clientHeight * 0.85,
                child: Container(
                  width: screenWidth * 0.01,
                  height: clientHeight * 0.015,
                  color: Colors.black,
                )),
            Positioned(
                left: screenWidth * 0.52,
                top: clientHeight * 0.863,
                child: Container(
                  width: screenWidth * 0.017,
                  height: clientHeight * 0.015,
                  color: Colors.grey,
                )),
            // frock
            Positioned(
              left: screenWidth * 0.44,
              top: clientHeight * 0.35,
              child: ClipPath(
                  clipper: CustomDollFrockDesign(),
                  child: Container(
                    color: Colors.pink.shade100,
                    height: clientHeight * 0.3,
                    width: screenWidth * 0.12,
                  )),
            ),
            // belt
            Positioned(
                left: screenWidth * 0.488,
                top: clientHeight * 0.34,
                child: Container(
                  width: screenWidth * 0.024,
                  height: clientHeight * 0.01,
                  color: Colors.black,
                )),
            // Neck
            Positioned(
                left: screenWidth * 0.49,
                top: clientHeight * 0.168,
                child: Container(
                  color: Colors.grey.shade300,
                  height: clientHeight * 0.04,
                  width: screenWidth * 0.0205,
                )),

            // shirt
            Positioned(
              left: screenWidth * 0.475,
              top: clientHeight * 0.181,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                child: ClipPath(
                    clipper: CustomShirtDesign(),
                    child: Container(
                      color: Colors.brown.shade100,
                      height: clientHeight * 0.16,
                      width: screenWidth * 0.05,
                    )),
              ),
            ),
            // Face
            Positioned(
              left: screenWidth * 0.47,
              top: clientHeight * 0.05,
              child: ClipOval(
                  child: Container(
                color: Colors.blueGrey.shade100,
                height: screenWidth * 0.061,
                width: screenWidth * 0.06,
              )),
            ),
            // Left Eye
            Positioned(
              left: screenWidth * 0.48,
              top: clientHeight * 0.09,
              child: ClipOval(
                  child: Container(
                color: Colors.black,
                height: screenWidth * 0.007,
                width: screenWidth * 0.006,
              )),
            ),
            // left Eye ball
            Positioned(
              left: screenWidth * 0.482,
              top: clientHeight * 0.098,
              child: ClipOval(
                  child: Container(
                color: Colors.white,
                height: screenWidth * 0.002,
                width: screenWidth * 0.0018,
              )),
            ),
            // Right Eye
            Positioned(
              left: screenWidth * 0.515,
              top: clientHeight * 0.09,
              child: ClipOval(
                  child: Container(
                color: Colors.black,
                height: screenWidth * 0.007,
                width: screenWidth * 0.006,
              )),
            ),
            // right Eye ball
            Positioned(
              left: screenWidth * 0.517,
              top: clientHeight * 0.098,
              child: ClipOval(
                  child: Container(
                color: Colors.white,
                height: screenWidth * 0.002,
                width: screenWidth * 0.0018,
              )),
            ),
            // mouth
            Positioned(
              left: screenWidth * 0.4885,
              top: clientHeight * 0.13,
              child: ClipOval(
                  child: Container(
                color: Colors.pink.shade100,
                height: screenWidth * 0.007,
                width: screenWidth * 0.023,
              )),
            ),
            // // shirt
            // Positioned(
            //   left: screenWidth * 0.45,
            //   top: clientHeight * 0.17,
            //   child: ClipPath(
            //       clipper: CustomShirtDesign(),
            //       child: Container(
            //         color: Colors.brown.shade100,
            //         height: clientHeight * 0.2,
            //         width: screenWidth * 0.1,
            //       )),
            // ),
            // // belt
            // Positioned(
            //     left: screenWidth * 0.488,
            //     top: clientHeight * 0.39,
            //     child: Container(
            //       width: screenWidth * 0.024,
            //       height: clientHeight * 0.01,
            //       color: Colors.black,
            //     )),
            // // frock
            // Positioned(
            //   left: screenWidth * 0.44,
            //   top: clientHeight * 0.4,
            //   child: ClipPath(
            //       clipper: CustomDollFrockDesign(),
            //       child: Container(
            //         color: Colors.pink.shade100,
            //         height: clientHeight * 0.3,
            //         width: screenWidth * 0.12,
            //       )),
            // ),
          ],
        ));
  }
}
