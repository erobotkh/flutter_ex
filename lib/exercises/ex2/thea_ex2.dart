import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constant.dart';
import 'package:flutter_app/modal/icon_button_item_modal.dart';

class TheaEx2 extends StatelessWidget {
  final List<String> _bottomNavigationBar = ["Styles", "Tools", "Exports"];
  final List iconButtonItems = IconButtonItemModel.items;

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context),
      bottomNavigationBar: buildBottomNavigationBar(context, statusBarHeight),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(
    BuildContext context,
    double statusBarHeight,
  ) {
    return BottomNavigationBar(
      currentIndex: 1,
      onTap: (index) async {
        return await buildShowModalBottomSheet(
          context,
          index,
          statusBarHeight,
        );
      },
      items: List.generate(
        _bottomNavigationBar.length,
        (index) => BottomNavigationBarItem(
          label: _bottomNavigationBar[index],
          icon: const SizedBox(),
        ),
      ),
    );
  }

  Future buildShowModalBottomSheet(
    BuildContext context,
    int index,
    double statusBarHeight,
  ) {
    var height = MediaQuery.of(context).size.height;
    var initSize = 1 - (statusBarHeight + 100) / (height);
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: initSize,
          maxChildSize: 1,
          minChildSize: 0.5,
          builder: (context, controller) {
            return buildItemsListWidget(
              context,
              controller,
              statusBarHeight,
            );
          },
        );
      },
    );
  }

  Container buildItemsListWidget(
    BuildContext context,
    ScrollController controller,
    double statusBarHeight,
  ) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: statusBarHeight),
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 0.0,
        childAspectRatio: 1,
        controller: controller,
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        children: List.generate(
          iconButtonItems.length,
          (index) {
            return buildItemIconButton(index, context);
          },
        ),
      ),
    );
  }

  Container buildItemIconButton(int index, BuildContext context) {
    return Container(
      width: Constant.objectHeight1,
      height: Constant.objectHeight1,
      alignment: Alignment.center,
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                alignment: Alignment.center,
                child: Icon(
                  iconButtonItems[index].iconData,
                  color: Colors.black54,
                ),
              ),
              Container(
                height: 32,
                child: Text(
                  iconButtonItems[index].name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center buildBody(BuildContext context) {
    return Center(
      child: Container(
        width: Constant.objectHeight4,
        height: Constant.objectHeight4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constant.objectHeight4),
          color: Colors.black.withOpacity(0.1),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_a_photo,
            size: Constant.iconSize2,
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final List<IconData> _icons = [
      Icons.layers,
      Icons.info,
      Icons.more_vert,
    ];

    return AppBar(
      elevation: 0.0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: FlatButton(
        onPressed: () => Navigator.pop(context),
        splashColor: Colors.transparent,
        child: Text(
          "Open".toUpperCase(),
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      actions: List.generate(
        _icons.length,
        (index) => IconButton(
          onPressed: () {},
          icon: Icon(
            _icons[index],
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
