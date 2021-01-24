import 'package:flutter/material.dart';
import 'a1_export.dart';

class WrapperEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        DarotEx1(),
        MeyEx1(),
        SinatEx1(),
        TheaEx1(),
      ],
    );
  }
}
