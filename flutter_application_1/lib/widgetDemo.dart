import 'package:flutter/material.dart';

class WidgetColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //交叉轴显示
        mainAxisAlignment:MainAxisAlignment.spaceEvenly, //  Column 主轴是垂直主轴纵向的 ， 类似flex
        children:<Widget>[
          Icon(Icons.settings),
          Icon(Icons.grade ),
          Icon(Icons.group ),

        ]
      ),
    );
  }
}

class WidgetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.yellow,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.ac_unit_outlined),
          Icon(Icons.usb_outlined),
          Icon(Icons.group_outlined),
          Icon(Icons.set_meal),
          Icon(Icons.save),
          Icon(Icons.ac_unit_outlined),
        ],
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(  //组件text
      '啊哈哈哈哈双方就安静的发掘的发掘的房间阿拉基忒热的那块地方送剪发卡时间段发空间是地方课教案大风降温IE我我的大叔福建奥克斯的金发科技朵法拉可激动发卡机',
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.blue,

      ),
      maxLines: 3, //展示3行
      overflow: TextOverflow.ellipsis,  // ... 
    );
  }
}

class WidgetDemoRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
     text: TextSpan(
       text: '12345',
       style: TextStyle(
         color: Colors.pink,
         fontSize: 20.0
       ),
       children: [
         TextSpan(
           text:'678',
           style:TextStyle(
             color: Colors.black,
             fontSize: 25.0
           )

         ),
         TextSpan(
           text:'890',
           style:TextStyle(
             color: Colors.blue,
             fontSize: 25.0
           )

         )
       ]  
     ),
    );
  }
}

class WidgetDemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('123'),
      // color: Colors.red,  // 因为有decoration ,要把颜色写在decoration 里面
      width: double.infinity, //100 % 
      height: 300.00, //设置正常的值
      padding:EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.red,
        // 分别设置每一条边框
        // border: Border(
        //   bottom: BorderSide(
        //     color: Colors.green,
        //     width:  14.0
        //   ),
        //   left: BorderSide(
        //     color: Colors.pink,
        //     width: 14.0
        //   ),
        //   right: BorderSide(
        //     color: Colors.blue,
        //     width: 14.0
        //   ),
        //   top: BorderSide(
        //     color: Colors.yellow,
        //     width: 14.0
        //   ),
        // )

        // 设置所有边框
        border:Border.all(
          color:Colors.green,
          width:10.0
        ),

        // 圆角 
        // 设置所有圆角
        // borderRadius: BorderRadius.all(
        //   Radius.circular(20.0)
        // ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}