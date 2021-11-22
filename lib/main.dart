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
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontFamily: 'Helvetica Neue', color: Colors.grey),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          backgroundColor: Colors.blueGrey[800],
          elevation: 0,
        ),
        body: DefaultTabController(
          length: 4,
          child: Container(
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt_rounded)),
                Tab(text: 'Chats'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
            color: Colors.blueGrey[800],
          ),
        ),
      ),
    );
  }
}
