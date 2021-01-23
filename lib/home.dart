import 'package:flutter/material.dart';

import 'constants/constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> children = [];

  @override
  void initState() {
    super.initState();
    children = Constant.routes.entries
        .map(
          (e) => FlatButton(
            child: Text(e.value.toString()),
            onPressed: () {
              Navigator.of(context).pushNamed(e.key);
            },
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice"),
      ),
      body: ListView(children: children),
    );
  }
}
