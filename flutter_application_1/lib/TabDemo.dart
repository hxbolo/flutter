import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawerList.dart';
import 'package:flutter_application_1/more.dart';
import 'package:flutter_application_1/pageDemo.dart';
import 'package:flutter_application_1/pageNew.dart';

class TabDemo extends StatelessWidget{
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('啊啊啊1111'),
          elevation: 0.0, //头部阴影
          leading: Icon(Icons.map),
          actions: <Widget>[
            Icon(Icons.ac_unit)
          ],
          bottom: TabBar(
            labelColor: Colors.red, // 选中字体颜色
            labelStyle: TextStyle(  // 选中字体大小
              fontSize: 18.0
            ),
            unselectedLabelColor: Colors.white, // 不选中
            unselectedLabelStyle: TextStyle(  // 不选中
              fontSize: 14.0
            ),
            indicatorColor: Colors.yellow,// 底部颜色颜色
            indicatorWeight: 4, //底部切换调调高度
            indicatorSize: TabBarIndicatorSize.tab,  // label 设置跟文字宽度一致 tab  设置跟tab 一样宽
            tabs: <Widget>[
              Tab(text: 'html',),
              Tab(text: 'js',),
              Tab(text: 'css',)
            ]
          ),
        ),
        body: TabBarView(  //主体中切换的容器
          children: [
            More(),
            PageNew(),
            PageDemo(),
            // Icon(Icons.usb_outlined),
            // Icon(Icons.pages_outlined)
          ],
        ),
        // 侧边划出
        drawer: DrawerList()
      )
    );
  }
}
