import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text(
          "OPEN",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.layers_rounded),
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
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(null),
          // ignore: deprecated_member_use
          title: Text("Styles",style: TextStyle(fontSize: 20,color: Colors.grey),)
        ),
         BottomNavigationBarItem(
          icon: Icon(null),
          // ignore: deprecated_member_use
          title: Text("Tools",style: TextStyle(fontSize: 30,color: Colors.blue),)
        ),
         BottomNavigationBarItem(
          icon: Icon(null),
          // ignore: deprecated_member_use
          title: Text("Exports",style: TextStyle(fontSize: 20)),
        )
      ],),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: CircleAvatar(
            child: IconButton(
                icon: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  _bottonSheet(context);
                }),
            radius: 45,
            backgroundColor: Colors.grey.withOpacity(0.4),
          ),
        ),
      ),

    );
  }

  _bottonSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext c) {
          return Wrap(
            
            children: <Widget>[
              //COLUMN 1
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.tune),
                                onPressed: () {
                                  print("Crop");
                                }),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Turn image",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.change_history),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Details",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.star_rate),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Curves",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.exposure), onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("White balance",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Column 2
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.crop),
                                onPressed: () {
                                  print("Crop");
                                }),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Turn image",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.rotate_90_degrees_ccw_sharp),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Rotate",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.crop_16_9),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Perspective",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.self_improvement),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Expand",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Column3
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.radio_button_checked),
                                onPressed: () {
                                  print("Crop");
                                }),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Selective",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.brush), onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Brush",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.healing), onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Healing",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.filter_alt_outlined),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("HDR-scape",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Column4
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.tune),
                                onPressed: () {
                                  print("Glamour");
                                }),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Glamour glow",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.filter_alt_outlined),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Tonal constrast",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.filter_hdr_sharp),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Drama",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.filter_vintage),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Vintage",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Column5
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.flip_camera_android),
                                onPressed: () {
                                  print("Crop");
                                }),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Grainy film",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.repeat_rounded),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Retrolux",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.tune),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Grunge",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.filter_b_and_w),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Black and white",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Column6
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.tune),
                                onPressed: () {
                                  print("Crop");
                                }),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Noir",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.face),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Portrait",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.tag_faces),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Head pose",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.blur_circular),
                                  onPressed: () {}),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Lens Blur",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
       
        });
  }
}
