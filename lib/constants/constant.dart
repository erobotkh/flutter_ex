import 'package:flutter/material.dart';
import 'package:flutter_app/exercises/ex1/wrapper_ex1.dart';
import 'package:flutter_app/exercises/ex2/wrapper_ex2.dart';

class Constant {
  static final Map<String, WidgetBuilder> routes = {
    "ex1": (context) => WrapperEx1(),
    "ex2": (context) => WrapperEx2(),
  };

  static final double objectHeight1 = 48.0;
  static final double objectHeight2 = 54.0;
  static final double objectHeight3 = 96.0;
  static final double objectHeight4 = 120.0;

  static final double iconSize = 16.0;
  static final double iconSize2 = 32.0;
}
