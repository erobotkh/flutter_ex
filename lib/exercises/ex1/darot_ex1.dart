import 'package:flutter/material.dart';

/// Score 10/10.
/// check slide for more.
class DarotEx1 extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<DarotEx1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Text(""),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Feed Reader"),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(
        // padding: EdgeInsetsGeometry(),
        children: [
          ItemList(
            title: "Day reappeared. The tempest still raged with undiminished",
            subtitle: "Concern Beef procuitto ground",
          ),
          Divider(),
          ItemList(
            title: "There were some sing of calm at noon",
            subtitle: "Things to enjoy",
          ),
          Divider(),
          ItemList(
            title: "Fun tropical escapes",
            subtitle:
                "The night was comparatively quiet. Some of the sails were again.",
          ),
          Divider(),
          ItemList(
            title: "Pork lion suasage shankle, keilbasa bacon beef ribs",
            subtitle: "Drumstick turkey shoulder spare",
          ),
          Divider(),
          ItemList(
            title: "Cherry blossom in bloom",
            subtitle: "Spring is here and we know all know ",
          ),
          Divider(),
        ],
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    this.subtitle,
    this.title,
    Key key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        subtitle: Text("10 min"),
        trailing: Container(
          child: Image(
            image: NetworkImage(
                "https://cdn.britannica.com/08/187508-050-D6FB5173/Shanghai-Tower-Gensler-San-Francisco-world-Oriental-2015.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
