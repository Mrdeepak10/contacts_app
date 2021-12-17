import 'package:flutter/material.dart';

import 'create contact.dart';
import 'drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List data = [
    {
      "name": "deepak",
      "surname": "pachlashiya",
      "Mobile": "9770855576",
    },
    {
      "name": "Ram",
      "surname": "Sharma",
      "Mobile": "9754627521",
    },
    {
      "name": "Karan",
      "surname": "Thakur",
      "Mobile": "9098941412",
    },
    {
      "name": "Kamal",
      "surname": "Bhaya",
      "Mobile": "9685812224",
    },
    {
      "name": "Vikash",
      "surname": "Chohan",
      "Mobile": "8959056592",
    },
    {
      "name": "deven",
      "surname": "Nanglia",
      "Mobile": "9785627564",
    },
    {
      "name": "Rohit",
      "surname": "Mandloyi",
      "Mobile": "8770265192",
    },
    {
      "name": "Pankaj",
      "surname": "Sharma",
      "Mobile": "9752331525",
    }, {
      "name": "deven",
      "surname": "Nanglia",
      "Mobile": "9785627564",
    },
    {
      "name": "Raj",
      "surname": "Mandloyi",
      "Mobile": "8770265192",
    },
    {
      "name": "Sumit Mandloyi",
      "surname": "Sharma",
      "Mobile": "9752331525",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CDrawer(),
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(child: Text("D"),
            radius: 20,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateCon()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${data[index]['name'][0]}'.toUpperCase()),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text('${data[index]['name']}'+' '+'${data[index]['surname']}'),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text('${data[index]['Mobile']}'),
              ),
            ),
          );
        },
      )),
    );
  }
}
