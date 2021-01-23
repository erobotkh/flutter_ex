import 'package:flutter/material.dart';

class MeyEx1 extends StatelessWidget {
  int _curretIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Feed Reader'),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon:
                  //  Icon(Icons.refresh, color: Colors.white), onPressed: () {  },
                  Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            ListTile( 
              title: Text(
                  "Day reappeared. The tempest still reged with undiminished \nCorned beef prosciutto ground...",),
              subtitle: Text("10 min\n\n"),
              trailing: Image(
                
                image: NetworkImage(
                  'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg',
                ),
                width: 130,
              ),
              
            ),
            ListTile(
              title: Text(
                  "Tnere were some signs of a calm at noon. \nThings to enjoy"),
              subtitle: Text("1 hr\n\n"),
              trailing: Image(
                image: NetworkImage(
                  'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg',
                ),
                width: 130,
              ),
            ),
            ListTile(
              title: Text("Fun tropical escapes \nThe night was comparatively quiet.\nSome of the sails were again."),
              subtitle: Text("1 hr\n\n"),
              trailing: Image(
                image: NetworkImage(
                  'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg',
                ),
                width: 130,
              ),
            ),
            ListTile(
              title: Text("Pork loin sausage shankle, kielbasa bacon beef ribs Drumstick turkey shoulder spare..."),
              subtitle: Text("2 hr\n\n"),
              trailing: Image(
                image: NetworkImage(
                  'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg',
                ),
                width: 130,
              ),
            ),
            ListTile(
              title: Text("Cherry blossoms in bloom \nSpring is here and we all know..."),
              subtitle: Text("2 hr\n\n"),
              trailing: Image(
                image: NetworkImage(
                  'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg',
                ),
                width: 130,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curretIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'home',
                style: TextStyle(color: Colors.blue),
              ),
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'person',
                style: TextStyle(color: Colors.blue),
              ),
              icon: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'move',
                style: TextStyle(color: Colors.blue),
              ),
              icon: Icon(
                Icons.more_horiz_outlined,
                color: Colors.blue,
              ),
            ),
          ],
          // onTap: (index) {
          //   setState(() {
          //     _curretIndex = index;
          //   });
          // },
        ),
      ),
    );
  }
}
