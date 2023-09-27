import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/clippers/login_page_clippers.dart';

class LoginPageDesign extends StatefulWidget {
  const LoginPageDesign({super.key});

  @override
  State<LoginPageDesign> createState() => _LoginPageDesignState();
}

class _LoginPageDesignState extends State<LoginPageDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text("Login Page Design"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          //  first
          // outer
          Positioned(
              left: screenWidth * 0.02,
              top: clientHeight * 0.02,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              left: screenWidth * 0.0227,
              top: clientHeight * 0.0245,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.095,
                  height: screenWidth * 0.095,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          // inner
          Positioned(
              left: screenWidth * 0.026,
              top: clientHeight * 0.0315,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.088,
                  height: screenWidth * 0.088,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              left: screenWidth * 0.0285,
              top: clientHeight * 0.0365,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.083,
                  height: screenWidth * 0.083,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          //  second
          // outer
          Positioned(
              left: screenWidth * 0.09,
              top: clientHeight * 0.06,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              left: screenWidth * 0.0927,
              top: clientHeight * 0.0645,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.095,
                  height: screenWidth * 0.095,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          // inner
          Positioned(
              left: screenWidth * 0.096,
              top: clientHeight * 0.0715,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.088,
                  height: screenWidth * 0.088,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              left: screenWidth * 0.0985,
              top: clientHeight * 0.0765,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.083,
                  height: screenWidth * 0.083,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          //top
          Positioned(
              right: -50,
              top: -30,
              child: ClipPath(
                clipper: ContainerClipperClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.3,
                  color: Colors.red,
                ),
              )),
          // bottom
          Positioned(
              left: -50,
              bottom: -50,
              child: ClipPath(
                clipper: ContainerClipperClipper(),
                child: Container(
                  width: screenWidth * 0.2,
                  height: clientHeight * 0.3,
                  color: Colors.red,
                ),
              )),
          Positioned(
            left: screenWidth * 0.46,
            top: clientHeight * 0.15,
            child: Text(
              "Welcome Back \n \t \t \t \t Bakar",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),

          // userName Text Field
          Positioned(
              left: screenWidth * 0.325,
              top: clientHeight * 0.3,
              child: SizedBox(
                width: screenWidth * 0.35,
                height: screenWidth * 0.03,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.red.shade200,
                      label: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("User Name")),
                      prefixIcon: Container(
                        width: screenWidth * 0.03,
                        height: screenWidth * 0.03,
                        color: Colors.red,
                        child: Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                      )),
                ),
              )),
          // password text field
          Positioned(
              left: screenWidth * 0.325,
              top: clientHeight * 0.4,
              child: SizedBox(
                width: screenWidth * 0.35,
                height: screenWidth * 0.03,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.red.shade200,
                      suffix: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                      ),
                      label: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Password")),
                      prefixIcon: Container(
                        width: screenWidth * 0.03,
                        height: screenWidth * 0.03,
                        color: Colors.red,
                        child: Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                        ),
                      )),
                ),
              )),
          Positioned(
              left: screenWidth * 0.325,
              top: clientHeight * 0.5,
              child: Container(
                width: screenWidth * 0.35,
                height: clientHeight * 0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Positioned(
              left: screenWidth * 0.325,
              top: clientHeight * 0.6,
              child: Container(
                width: screenWidth * 0.35,
                height: clientHeight * 0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
          // right
          //  first
          // outer
          Positioned(
              right: screenWidth * 0.02,
              bottom: clientHeight * 0.02,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              right: screenWidth * 0.0227,
              bottom: clientHeight * 0.0245,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.095,
                  height: screenWidth * 0.095,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          // inner
          Positioned(
              right: screenWidth * 0.026,
              bottom: clientHeight * 0.0315,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.088,
                  height: screenWidth * 0.088,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              right: screenWidth * 0.0285,
              bottom: clientHeight * 0.0365,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.083,
                  height: screenWidth * 0.083,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          //  second
          // outer
          Positioned(
              right: screenWidth * 0.09,
              bottom: clientHeight * 0.06,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              right: screenWidth * 0.0927,
              bottom: clientHeight * 0.0645,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.095,
                  height: screenWidth * 0.095,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
          // inner
          Positioned(
              right: screenWidth * 0.096,
              bottom: clientHeight * 0.0715,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.088,
                  height: screenWidth * 0.088,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              )),
          Positioned(
              right: screenWidth * 0.0985,
              bottom: clientHeight * 0.0765,
              child: ClipPath(
                clipper: LoginPageHexagonShapeClipper(),
                child: Container(
                  width: screenWidth * 0.083,
                  height: screenWidth * 0.083,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
