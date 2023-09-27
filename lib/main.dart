import 'package:flutter/material.dart';
import 'package:flutter_clipers_design/screen_view/clip_oval_design.dart';
import 'package:flutter_clipers_design/screen_view/clip_rect_design.dart';
import 'package:flutter_clipers_design/screen_view/clip_rrect_design.dart';
import 'package:flutter_clipers_design/screen_view/custom_clipper_design.dart';
import 'package:flutter_clipers_design/screen_view/custom_clipper_doll_design.dart';
import 'package:flutter_clipers_design/screen_view/flutter_logo_design.dart';
import 'package:flutter_clipers_design/screen_view/house_design.dart';
import 'package:flutter_clipers_design/screen_view/kite_shape_design.dart';
import 'package:flutter_clipers_design/screen_view/login_page_design.dart';
import 'package:flutter_clipers_design/screen_view/mosque_design.dart';
import 'package:flutter_clipers_design/screen_view/mountains_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomClipperDesign();
  }
}
