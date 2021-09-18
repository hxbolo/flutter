import 'package:flutter/material.dart';

class PageNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //图片
        Image.asset('images/pic.png'),
        //两列文案
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      'Nisi do ea quis in aute laborum id eiusmod do eu tempor. Excepteur proident reprehenderit sunt est voluptate proident cupidatat enim in dolor.',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Adipisicing ex incididunt labore cillum id officia esse dolor.  ex non cillum nulla sit ex id minim minim quis ipsum sint.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )
              
              ),
              Icon(
                Icons.star,
                color: Colors.red
              ),
              Text('30')
            ],
          ),
        ),
        // 按钮
        Padding(
          padding: EdgeInsets.all(20.0),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PluIcon(Icons.phone,'PHONE'),
              PluIcon(Icons.save,'SAVE'),
              PluIcon(Icons.router,'ROUTER'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Nulla consectetur qui irure cillum mollit minim culpa minim id ea cupidatat. Anim sunt nulla labore duis nostrud voluptate duis do officia nostrud incididunt. Ad cillum in deserunt labore cupidatat Lorem qui fugiat. Duis sit labore dolore voluptate dolor exercitation ea laborum id tempor.',
            style: TextStyle(
              fontSize:18.0,
              
            ),
          ),
        )
      ],
    );
  }
}

class PluIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  PluIcon(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue
          ),
        )
      ],
    );
  }
}