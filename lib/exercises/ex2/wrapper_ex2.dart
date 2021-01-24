import 'package:flutter/material.dart';
import 'a2_export.dart';

class WrapperEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        DarotEx2(),
        MeyEx2(),
        SinatEx2(),
        TheaEx2(),
      ],
    );
  }
}
