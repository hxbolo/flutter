import 'package:flutter/material.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // 固定宽高比
        // AspectRatio(
        //   aspectRatio: 13/4,
        //   child: Container(
        //     child: Text('11111'),
        //     color: Colors.pink,
        //   )
        //    ,
        // ),
        AspectRatio( // 一般用于图片等比缩放
          aspectRatio: 20/9,
          child:  Image.asset(
            'images/pic.png',
            fit:BoxFit.fill,
          ),
        ),
        Stack(
          children: [
            Container(
              color:Colors.blue,
              width: double.infinity,
              height: 200.0,

            ),
            Positioned(
              right: 40.0,
              top:30.0,
              child: Icon(
                Icons.audiotrack,
                color: Colors.white,
              
              )
            ),
            Positioned(
              right: 90.0,
              top:50.0,
              child: Icon(
                Icons.audiotrack,
                color: Colors.white,
              
              )
            ),
            Positioned(
              right: 4.0,
              top:20.0,
              child: Icon(
                Icons.audiotrack,
                color: Colors.white,
              
              )
            ),
            Positioned(
              left: 10.0,
              top:50.0,
              child: Icon(
                Icons.audiotrack,
                color: Colors.white,
              
              )
            ),
            Positioned(
              left: 20.0,
              top:80.0,
              child: Icon(
                Icons.audiotrack,
                color: Colors.white,
              
              )
            )
          ],
        ),
        ListTile(
          title: Text('个人中心'),
          leading: Icon(Icons.usb_rounded),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text('进入个人中心'),
          onTap:(){ // 点击事件
            print('你点击了个人中心');   //打印
          }
        ),
        Divider(), // 分割线
        ListTile(
          title: Text('设置'),
          leading: Icon(Icons.usb_rounded),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text('进入设置'),
        ),
        Divider(), // 分割线
        ListTile(
          title: Text('会员'),
          leading: Icon(Icons.usb_rounded),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text('进入会员'),
        ),
        Chip(
          label: Text('html'),
          backgroundColor: Colors.yellow,
          avatar: CircleAvatar(
            child: Text('B'),
            backgroundColor: Colors.red[100],
          ),
          deleteIcon: Icon(Icons.usb), // 设置修改删除图标
          onDeleted: (){
            print('删除');
          },
        ),
      ],
    );
  }
}