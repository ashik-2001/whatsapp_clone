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
                  camera_page(),
                  chat_page(),
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

class camera_page extends StatelessWidget {
  const camera_page({Key? key}) : super(key: key);

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

class chat_page extends StatelessWidget {
  const chat_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 50,
        height: 50,
                      margin: EdgeInsets.all(12.0),  
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://cdn.vox-cdn.com/thumbor/ZmCGGjS0zJgCe7l-2hHOpIDP6ag=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/67419919/nstatt_170418_1624_0052.0.0.jpg"),
          ),
        ),
      ),
    );
  }
}
