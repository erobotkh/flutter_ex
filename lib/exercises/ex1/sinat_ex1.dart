import 'package:flutter/material.dart';

class SinatEx1 extends StatefulWidget {
  SinatEx1({Key key, this.title = "Sinat"}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SinatEx1> {
  int _currentIdex = 0;
  final tabs = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'History',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Person',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text(
          "Feed Reader",
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
                "Day reappeaed. The tempset still raged with undiminished \n\nCorned beef prosciutto ground...."),
            subtitle: Text('10mn'),
            trailing: Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              ),
              width: 130,
            ),
          ),
          ListTile(
            title: Text(
                "Day reappeared. The tempest still reged with undiminished \nCorned beef prosciutto ground..."),
            subtitle: Text("10 min\n\n"),
            trailing: Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              ),
              width: 130,
            ),
          ),
          ListTile(
            title: Text(
                "Day reappeared. The tempest still reged with undiminished \nCorned beef prosciutto ground..."),
            subtitle: Text("10 min\n\n"),
            trailing: Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              ),
              width: 130,
            ),
          ),
          ListTile(
            title: Text(
                "Day reappeared. The tempest still reged with undiminished \nCorned beef prosciutto ground..."),
            subtitle: Text("10 min\n\n"),
            trailing: Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              ),
              width: 130,
            ),
          ),
          ListTile(
            title: Text(
                "Day reappeared. The tempest still reged with undiminished \nCorned beef prosciutto ground..."),
            subtitle: Text("10 min\n\n"),
            trailing: Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              ),
              width: 130,
            ),
          ),
          ListTile(
            title: Text(
                "Day reappeared. The tempest still reged with undiminished \nCorned beef prosciutto ground..."),
            subtitle: Text("10 min\n\n"),
            trailing: Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              ),
              width: 130,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 18,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
            backgroundColor: Colors.amber,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIdex = index;
          });
        },
      ),
    );
  }
}
