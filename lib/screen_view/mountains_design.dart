import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/mountains_clipper.dart';

class MountainsDeign extends StatefulWidget {
  const MountainsDeign({super.key});

  @override
  State<MountainsDeign> createState() => _MountainsDeignState();
}

class _MountainsDeignState extends State<MountainsDeign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Mountain Clipper Design"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: SizedBox(
                height: clientHeight * 0.7,
                width: screenWidth,
                child: Image.asset(
                  "assets/images/cloud.jpeg",
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              left: screenWidth * 0.58,
              top: clientHeight * 0.2,
              child: Container(
                height: screenWidth * 0.2,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Colors.orange.shade500,
                      Colors.deepOrange,
                      Colors.deepOrangeAccent,
                      Colors.orange.shade500,
                      Colors.deepOrange,
                      Colors.orange.shade500,
                      Colors.deepOrange,
                      Colors.deepOrangeAccent,
                      Colors.orange.shade500,
                      Colors.deepOrange,
                    ], transform: GradientRotation(0.5))),
              )),
          Positioned(
              left: screenWidth * 0.3,
              top: clientHeight * 0.1,
              child: ClipPath(
                clipper: MountainClipper(),
                child: Container(
                  width: screenWidth * 0.5,
                  color: Color.fromARGB(255, 192, 211, 222),
                  height: clientHeight * 0.6,
                ),
              )),
          Positioned(
              left: screenWidth * 0.01,
              top: clientHeight * 0.1,
              child: ClipPath(
                clipper: MountainClipper(),
                child: Container(
                  width: screenWidth * 0.4,
                  color: Color.fromARGB(255, 88, 101, 108),
                  height: clientHeight * 0.6,
                ),
              )),
          Positioned(
              left: screenWidth * 0.2,
              top: clientHeight * 0.2,
              child: ClipPath(
                clipper: MountainClipper(),
                child: Container(
                  width: screenWidth * 0.35,
                  color: Color.fromARGB(255, 135, 179, 203),
                  height: clientHeight * 0.5,
                ),
              )),
          Positioned(
              left: screenWidth * 0.6,
              top: clientHeight * 0.1,
              child: ClipPath(
                clipper: MountainClipper(),
                child: Container(
                  width: screenWidth * 0.4,
                  color: Color.fromARGB(255, 88, 101, 108),
                  height: clientHeight * 0.6,
                ),
              )),
          // water
          Positioned(
              top: clientHeight * 0.7,
              child: Container(
                width: screenWidth,
                color: Colors.blue.shade200,
                height: clientHeight * 0.3,
              )),

          // First Wave
          Positioned(
              top: clientHeight * 0.6,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          Positioned(
              top: clientHeight * 0.6,
              left: screenWidth * 0.25,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          Positioned(
              top: clientHeight * 0.6,
              left: screenWidth * 0.5,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          Positioned(
              top: clientHeight * 0.6,
              left: screenWidth * 0.75,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          // second wave

          Positioned(
              top: clientHeight * 0.65,
              left: screenWidth * 0.125,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade300,
                ),
              )),
          Positioned(
              top: clientHeight * 0.65,
              left: screenWidth * 0.375,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade300,
                ),
              )),
          Positioned(
              top: clientHeight * 0.65,
              left: screenWidth * 0.625,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade300,
                ),
              )),
          // third wave
          Positioned(
              top: clientHeight * 0.7,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          Positioned(
              top: clientHeight * 0.7,
              left: screenWidth * 0.25,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          Positioned(
              top: clientHeight * 0.7,
              left: screenWidth * 0.5,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          Positioned(
              top: clientHeight * 0.7,
              left: screenWidth * 0.75,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.25,
                  color: Colors.blue.shade500,
                ),
              )),
          // forth wave
          // Positioned(
          //     top: clientHeight * 0.75,
          //     left: screenWidth * 0.125,
          //     child: ClipPath(
          //       clipper: WaveClipper(),
          //       child: Container(
          //         width: screenWidth * 0.2,
          //         height: clientHeight * 0.25,
          //         color: Colors.blue.shade300,
          //       ),
          //     )),
          // Positioned(
          //     top: clientHeight * 0.75,
          //     left: screenWidth * 0.375,
          //     child: ClipPath(
          //       clipper: WaveClipper(),
          //       child: Container(
          //         width: screenWidth * 0.2,
          //         height: clientHeight * 0.25,
          //         color: Colors.blue.shade300,
          //       ),
          //     )),
          // Positioned(
          //     top: clientHeight * 0.75,
          //     left: screenWidth * 0.625,
          //     child: ClipPath(
          //       clipper: WaveClipper(),
          //       child: Container(
          //         width: screenWidth * 0.2,
          //         height: clientHeight * 0.25,
          //         color: Colors.blue.shade300,
          //       ),
          //     )),
        ],
      ),
    );
  }
}
