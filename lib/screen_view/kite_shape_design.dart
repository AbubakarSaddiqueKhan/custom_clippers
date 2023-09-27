import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/kite_clipper_design.dart';

class KiteShapeDesign extends StatefulWidget {
  const KiteShapeDesign({super.key});

  @override
  State<KiteShapeDesign> createState() => _KiteShapeDesignState();
}

class _KiteShapeDesignState extends State<KiteShapeDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Kite Design"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
              left: screenWidth * 0.4,
              top: clientHeight * 0.1,
              child: ClipPath(
                clipper: KiteClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: screenWidth * 0.2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.amber,
                    Colors.blue,
                    Colors.blueGrey,
                    Colors.brown,
                    Colors.cyan,
                    Colors.deepOrange,
                    Colors.deepPurple,
                    Colors.green,
                    Colors.pinkAccent
                  ], transform: GradientRotation(3))),
                ),
              )),
          Positioned(
              left: screenWidth * 0.481,
              top: clientHeight * 0.45,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: ClipPath(
                  clipper: KiteBottomClipper(),
                  child: Container(
                    width: screenWidth * 0.04,
                    height: screenWidth * 0.04,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.brown,
                      Colors.cyan,
                      Colors.deepOrange,
                      Colors.deepPurple,
                      Colors.green,
                      Colors.pinkAccent,
                      Colors.black,
                      Colors.amber,
                      Colors.blue,
                      Colors.blueGrey,
                    ], transform: GradientRotation(3))),
                  ),
                ),
              )),
          Positioned(
              left: screenWidth * 0.355,
              top: clientHeight * 0.3,
              child: SizedBox(
                height: screenWidth * 0.3,
                width: screenWidth * 0.3,
                child: Image.asset(
                  "assets/images/man.png",
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
