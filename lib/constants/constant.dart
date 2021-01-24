import 'package:flutter/material.dart';
import 'package:flutter_app/exercises/ex1/wrapper_ex1.dart';

class Constant {
  static final Map<String, WidgetBuilder> routes = {
    "ex1": (context) => WrapperEx1(),
    "ex2": (context) => Container(),
  };
}
