import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/mosque_clipper.dart';

class MosqueDesign extends StatefulWidget {
  const MosqueDesign({super.key});

  @override
  State<MosqueDesign> createState() => _MosqueDesignState();
}

class _MosqueDesignState extends State<MosqueDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Mosque Design"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // left pillar
          Positioned(
              left: screenWidth * 0.1,
              bottom: clientHeight * 0.1,
              child: Container(
                width: screenWidth * 0.04,
                height: clientHeight * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
              )),
          Positioned(
              left: screenWidth * 0.1,
              bottom: clientHeight * 0.8,
              child: Container(
                width: screenWidth * 0.04,
                height: clientHeight * 0.02,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
              )),
          Positioned(
              left: screenWidth * 0.1,
              bottom: clientHeight * 0.82,
              child: ClipPath(
                clipper: MosqueGunbadClipper(),
                child: Container(
                  width: screenWidth * 0.04,
                  height: clientHeight * 0.2,
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                ),
              )),

          Positioned(
              left: screenWidth * 0.14,
              bottom: clientHeight * 0.1,
              child: ClipPath(
                clipper: MosqueLeftDoorClipper(),
                child: Container(
                  width: screenWidth * 0.25,
                  height: clientHeight * 0.45,
                  decoration: BoxDecoration(color: Colors.blueGrey.shade100
                      // border: Border.all(color: Colors.blue, width: 2)
                      ),
                ),
              )),
          // right pillar
          Positioned(
              right: screenWidth * 0.1,
              bottom: clientHeight * 0.1,
              child: Container(
                width: screenWidth * 0.04,
                height: clientHeight * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
              )),
          Positioned(
              right: screenWidth * 0.1,
              bottom: clientHeight * 0.8,
              child: Container(
                width: screenWidth * 0.04,
                height: clientHeight * 0.02,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
              )),
          Positioned(
              right: screenWidth * 0.1,
              bottom: clientHeight * 0.82,
              child: ClipPath(
                clipper: MosqueGunbadClipper(),
                child: Container(
                  width: screenWidth * 0.04,
                  height: clientHeight * 0.2,
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                ),
              )),
          Positioned(
              right: screenWidth * 0.14,
              bottom: clientHeight * 0.1,
              child: ClipPath(
                clipper: MosqueLeftDoorClipper(),
                child: Container(
                  width: screenWidth * 0.25,
                  height: clientHeight * 0.45,
                  decoration: BoxDecoration(color: Colors.grey.shade400
                      // border: Border.all(color: Colors.blue, width: 2)
                      ),
                ),
              )),
          // center
          Positioned(
              left: screenWidth * 0.35,
              bottom: clientHeight * 0.1,
              child: ClipPath(
                clipper: MosqueLeftDoorClipper(),
                child: Container(
                  width: screenWidth * 0.3,
                  height: clientHeight * 0.55,
                  decoration: BoxDecoration(color: Colors.brown.shade300
                      // border: Border.all(color: Colors.blue, width: 2)
                      ),
                ),
              )),
          Positioned(
              left: screenWidth * 0.35,
              bottom: clientHeight * 0.65,
              child: Container(
                width: screenWidth * 0.3,
                height: clientHeight * 0.02,
                decoration: BoxDecoration(color: Colors.blueGrey.shade300
                    // border: Border.all(color: Colors.blue, width: 2)
                    ),
              )),
          Positioned(
              left: screenWidth * 0.35,
              bottom: clientHeight * 0.67,
              child: ClipPath(
                clipper: MosqueGunbadClipper(),
                child: Container(
                  width: screenWidth * 0.3,
                  height: clientHeight * 0.2,
                  decoration: BoxDecoration(color: Colors.brown.shade200
                      // border: Border.all(color: Colors.blue, width: 2)
                      ),
                ),
              )),
        ],
      ),
    );
  }
}
