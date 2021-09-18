import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawerList.dart';
import 'package:flutter_application_1/hello.dart';
import 'package:flutter_application_1/tabDome.dart';
import 'package:flutter_application_1/widgetDemo.dart';
class Home extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('啊啊啊'),
        elevation: 0.0, //头部阴影
        leading: Icon(Icons.map),
        actions: <Widget>[
          Icon(Icons.ac_unit)
        ],
      ),
      body: TabDome(),
      // 侧边划出
      drawer: DrawerList()
    );
  }
}
