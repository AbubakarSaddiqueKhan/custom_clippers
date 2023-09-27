import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/house_clipper.dart';

class HouseDesign extends StatefulWidget {
  const HouseDesign({super.key});

  @override
  State<HouseDesign> createState() => _HouseDesignState();
}

class _HouseDesignState extends State<HouseDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("House Design"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // chimney
          Positioned(
              left: screenWidth * 0.3,
              top: clientHeight * 0.13,
              child: Container(
                width: screenWidth * 0.02,
                height: clientHeight * 0.1,
                color: Colors.brown.shade400,
              )),
          // smoke
          Positioned(
              left: screenWidth * 0.29,
              top: clientHeight * 0.02,
              child: SizedBox(
                  width: screenWidth * 0.04,
                  height: clientHeight * 0.1,
                  child: Image.asset(
                    "assets/images/smoke.png",
                    fit: BoxFit.fill,
                  ))),
          // flag
          Positioned(
              left: screenWidth * 0.59,
              top: clientHeight * 0.02,
              child: SizedBox(
                  width: screenWidth * 0.1,
                  height: clientHeight * 0.2,
                  child: Image.asset(
                    "assets/images/pak.png",
                    fit: BoxFit.cover,
                  ))),

          // top outer bondry
          Positioned(
              left: screenWidth * 0.24,
              top: clientHeight * 0.005,
              child: ClipPath(
                clipper: HouseTopClipper(),
                child: Container(
                  width: screenWidth * 0.52,
                  height: clientHeight * 0.29,
                  color: Colors.black,
                ),
              )),
          // top inner bondary
          Positioned(
              left: screenWidth * 0.25,
              top: clientHeight * 0.01,
              child: ClipPath(
                clipper: HouseTopClipper(),
                child: Container(
                  width: screenWidth * 0.5,
                  height: clientHeight * 0.28,
                  color: Colors.red,
                ),
              )),
          // zero line
          Positioned(
              left: screenWidth * 0.475,
              top: clientHeight * 0.05,
              child: Container(
                color: Colors.black,
                height: clientHeight * 0.003,
                width: screenWidth * 0.05,
              )),
          // first line
          Positioned(
              left: screenWidth * 0.45,
              top: clientHeight * 0.1,
              child: Container(
                color: Colors.black,
                height: clientHeight * 0.003,
                width: screenWidth * 0.1,
              )),
          // second line
          Positioned(
              left: screenWidth * 0.4,
              top: clientHeight * 0.15,
              child: Container(
                color: Colors.black,
                height: clientHeight * 0.003,
                width: screenWidth * 0.2,
              )),
          // third line
          Positioned(
              left: screenWidth * 0.35,
              top: clientHeight * 0.2,
              child: Container(
                color: Colors.black,
                height: clientHeight * 0.003,
                width: screenWidth * 0.3,
              )),
          // forth line
          Positioned(
              left: screenWidth * 0.3,
              top: clientHeight * 0.25,
              child: Container(
                color: Colors.black,
                height: clientHeight * 0.003,
                width: screenWidth * 0.4,
              )),
          // wall
          Positioned(
              left: screenWidth * 0.3,
              top: clientHeight * 0.29,
              child: Container(
                width: screenWidth * 0.4,
                height: clientHeight * 0.6,
                color: Colors.grey,
              )),
          // door border
          Positioned(
              left: screenWidth * 0.32,
              top: clientHeight * 0.583,
              child: Container(
                width: screenWidth * 0.11,
                height: clientHeight * 0.307,
                color: Colors.black,
              )),
          // door
          Positioned(
              left: screenWidth * 0.325,
              top: clientHeight * 0.59,
              child: Container(
                width: screenWidth * 0.1,
                height: clientHeight * 0.3,
                color: Colors.brown,
              )),
          // door lock
          Positioned(
              left: screenWidth * 0.41,
              top: clientHeight * 0.725,
              child: Container(
                width: screenWidth * 0.007,
                height: screenWidth * 0.007,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              )),
          // Window
          Positioned(
              left: screenWidth * 0.57,
              top: clientHeight * 0.44,
              child: SizedBox(
                width: screenWidth * 0.1,
                height: screenWidth * 0.1,
                child: Image.asset(
                  "assets/images/window.png",
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
