import 'package:flutter/material.dart';

class TheaEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black.withOpacity(0.8),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Feed reader"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
            color: Colors.black.withOpacity(0.8),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.black.withOpacity(0.8),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text(
              "Day reappeared. The tempest still raged with undiminised\nCorn beef proscuitto grouned Day reappeared. The tempest still.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: Text(
                DateTime.now().minute.toString() + " mn",
              ),
            ),
            trailing: Image.network(
              'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png',
              fit: BoxFit.cover,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
