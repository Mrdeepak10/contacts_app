import 'package:flutter/material.dart';

import 'create contact.dart';
import 'drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      home: CreateCon(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CDrawer(),
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 20,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('A'),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text('name'),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text('1234567890'),
              ),
            ),
          );
        },
      )),
    );
  }
}
