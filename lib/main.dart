import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Whatsapp Clone'),
      home: Scaffold(
        body: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    title: Text(
                      'WhatsApp',
                      style: TextStyle(
                          fontFamily: 'Helvetica Neue', color: Colors.grey),
                    ),
                    pinned: true,
                    floating: true,
                    actions: <Widget>[
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                    ],
                    backgroundColor: Colors.blueGrey[900],
                    bottom: TabBar(
                      //isScrollable: true,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.camera_alt),
                        ),
                        Tab(child: Text('Chats')),
                        Tab(child: Text('Status')),
                        Tab(child: Text('Calls')),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  camera_pages(),
                  Icon(Icons.directions_transit, size: 350),
                  Icon(Icons.directions_car, size: 350),
                  Icon(Icons.directions_bike, size: 350),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class camera_pages extends StatelessWidget {
  const camera_pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
