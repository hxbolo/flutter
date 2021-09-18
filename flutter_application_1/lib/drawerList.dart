

import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text(
              '123',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white
              ),
              )
          ),
          ListTile(
            title:Text('my'),
            leading: Icon(Icons.supervised_user_circle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:Text('group'),
            leading: Icon(Icons.group),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:Text('settings'),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      )
     
    );
  }
}