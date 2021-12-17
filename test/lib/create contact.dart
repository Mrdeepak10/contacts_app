import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CreateCon extends StatefulWidget {
  @override
  _CreateConState createState() => _CreateConState();
}

class _CreateConState extends State<CreateCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Create contact'),
        leading: Icon(Icons.close),
        actions: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Save',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('deepak10pachlashiya@gmail.com'),
                      ),
                    ),
                    height: 35,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('deepak10pachlashiya@gmail.com'),
                      ),
                    ),
                    height: 35,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.camera_alt_outlined),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  icon: const Icon(Icons.person),
                  hintText: "First Name",
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 5, 90, 5),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  hintText: " surname",
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  icon: const Icon(Icons.home_work_outlined),
                  hintText: "Company ",
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  icon: const Icon(Icons.phone),
                  hintText: "Phone",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 10, 90, 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    hintText: "Label",
                    labelText: "Mobile"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  icon: const Icon(Icons.mail),
                  hintText: " Mail ",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
