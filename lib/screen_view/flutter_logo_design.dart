import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/flutter_logo_clipper_design.dart';

class FlutterLogoDesign extends StatefulWidget {
  const FlutterLogoDesign({super.key});

  @override
  State<FlutterLogoDesign> createState() => _FlutterLogoDesignState();
}

class _FlutterLogoDesignState extends State<FlutterLogoDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Logo Design"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
                top: 10, left: screenWidth * 0.2, child: Text("Original Logo")),
            Positioned(
                top: clientHeight * 0.2,
                left: screenWidth * 0.1,
                child: FlutterLogo(
                  size: screenWidth * 0.2,
                )),
            Positioned(
                right: screenWidth * 0.15,
                top: 10,
                child: Text("My Clipped Shape")),
            Positioned(
                left: screenWidth * 0.7,
                top: clientHeight * 0.2,
                child: ClipPath(
                  clipper: FlutterFirstSlide(),
                  child: Container(
                    width: screenWidth * 0.2,
                    height: screenWidth * 0.2,
                    color: Colors.lightBlue.shade300,
                  ),
                )),
            Positioned(
                left: screenWidth * 0.7,
                top: clientHeight * 0.2,
                child: ClipPath(
                  clipper: FlutterSecondLowerDarkSide(),
                  child: Container(
                    width: screenWidth * 0.2,
                    height: screenWidth * 0.2,
                    color: Color.fromARGB(255, 17, 81, 133),
                  ),
                )),
            Positioned(
                left: screenWidth * 0.7,
                top: clientHeight * 0.2,
                child: ClipPath(
                  clipper: FlutterThirdUpperSlide(),
                  child: Container(
                    width: screenWidth * 0.2,
                    height: screenWidth * 0.2,
                    color: Colors.lightBlue.shade400.withOpacity(0.9),
                  ),
                )),
          ],
        ));
  }
}
