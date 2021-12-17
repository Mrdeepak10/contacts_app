import 'package:flutter/material.dart';

class CDrawer extends StatefulWidget {

  @override
  _CDrawerState createState() => _CDrawerState();
}

class _CDrawerState extends State<CDrawer> {
  @override

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(right:20),
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvLlhPSXtc5Vk4H8LnYGua1AotSYEJuvSBPA&usqp=CAU')),
            ),
            title: Text(
              'Contacts',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('contacts'),
            trailing: Text('825'),
          ),
          ListTile(
            leading: Icon(Icons.auto_fix_high),
            title: Text('Merge and fix'),
          ),
          ListTile(
            leading: Text('Labels'),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Create label'),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Bin'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & feedback'),
          ),
        ],
      ),
    );
  }
}
