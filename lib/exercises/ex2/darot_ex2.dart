import 'package:flutter/material.dart';
import 'package:flutter_app/modal/icon_button_item_modal.dart';

class DarotEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 2"),
      ),
      body: Center(
        child: Text("body!"),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                buildShowModalBottomSheet(context);
              },
              child: Text("STYLE"),
            ),
            TextButton(
                onPressed: () {
                  buildShowModalBottomSheet(context);
                },
                child: Text("TOOLS")),
            TextButton(
                onPressed: () {
                  buildShowModalBottomSheet(context);
                },
                child: Text("EXPORT")),
          ],
        ),
      ),
    );
  }

  Future buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (ctx) {
        return DraggableScrollableSheet(
          maxChildSize: 0.88,
          initialChildSize: 0.88,
          minChildSize: 0.5,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.white,
              child: GridView.count(
                padding: EdgeInsets.all(20),
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children:
                    List.generate(IconButtonItemModel.items.length, (index) {
                  var icon = IconButtonItemModel.items[index];
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(icon.iconData),
                        SizedBox(height: 15),
                        Text(
                          icon.name,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }
}
