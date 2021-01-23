import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constant.dart';
import 'package:flutter_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Constant.routes,
      home: Home(),
    );
  }
}