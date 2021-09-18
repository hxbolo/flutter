import 'package:flutter/material.dart';

class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 图片
        Image.asset('images/pic.png'),
        // 标签
        Padding(
          padding: EdgeInsets.all(20.0),  // 设置元素padding
          child: Row(
          children: <Widget>[
            Expanded( //类似于flex布局
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Error detected in pubspec.yamlError detected in pubspec.yaml::',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600

                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox( //一个空盒子， 类似于margin可以占一点高度
                    height: 5.0,
                  ),
                  Text(
                    'The specific RenderFlex in question isOVERFLOWING',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    maxLines: 1, //只显示一行
                    overflow: TextOverflow.ellipsis, // 超出。。。
                  )
                ]
              ),
            ), 
            // 星星
            Icon(Icons.star,color: Colors.red,),
            Text('21')
          ],
        ),
        ),
        
        // 按钮
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Column(
            //   children: [
            //     Icon(Icons.phone, color: Colors.blue,),
            //     SizedBox(height:10.0),
            //     Text('PHONE', style:TextStyle(color: Colors.blue),),
            //   ],
            // ),
            // Column(
            //   children: [
            //     Icon(Icons.share, color: Colors.blue,),
            //     SizedBox(height:10.0),
            //     Text('SHARE', style:TextStyle(color: Colors.blue),),
            //   ],
            // ),
            // Column(
            //   children: [
            //     Icon(Icons.usb, color: Colors.blue,),
            //     SizedBox(height:10.0),
            //     Text('USB', style:TextStyle(color: Colors.blue),),
            //   ],
            // ),
            PluIcon(Icons.phone, 'PHONE'),
            PluIcon(Icons.router,'ROUTER'),
            PluIcon(Icons.share, 'SHARE')
          ],
        ),
         
        // 长文字
        Padding(
          padding: EdgeInsets.all(20.0),
          child:Text('Amet amet enim dolore occaecat velit veniam magna enim laboris aliquip amet. Amet eu laborum mollit est ut amet quis proident adipisicing ut. Anim in proident ad irure non reprehenderit Lorem ipsum aliqua Lorem. Velit voluptate aliqua minim eu sit cillum cillum sint proident cupidatat adipisicing nostrud ea pariatur. Officia qui non do et fugiat aliqua reprehenderit voluptate nulla velit proident ipsum ullamco non. Cupidatat ea dolore laboris labore deserunt velit dolore laborum Lorem ad pariatur.')
        )
      ],
    );
  }
}

class PluIcon extends StatelessWidget {
  // 声明变量
  final String text;
  final IconData icon;

  PluIcon(this.icon, this.text);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue,),
        SizedBox(height:10.0),
        Text(text, style:TextStyle(color: Colors.blue),),
      ],
    );
  }
}