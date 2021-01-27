import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'OPEN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  get mainAxisAlignment => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.layers),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Computer Science'),
              onPressed: () => _onBottomPressed(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(null),
              onPressed: () => _onBottomPressed(),
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Styles',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(null), 
              onPressed: () => _onBottomPressed(),
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Tools',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(null), 
              onPressed: () => _onBottomPressed(),
              ),
            // ignore: deprecated_member_use
            title: Text(
              'Export',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  void _onBottomPressed() {
    showModalBottomSheet(
        isScrollControlled: false,
        context: context,
        builder: (context) {
          return Container(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [Icon(Icons.tune), Text("Tune Image")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.change_history),
                            Text("Details")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Icon(Icons.star_rate), Text("Curves")],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.exposure),
                            Text("White balance")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
