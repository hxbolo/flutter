
import 'package:flutter/material.dart';
import 'package:flutter_application_1/TabDemo.dart';

void main() {
  runApp(

    App()

  );
}

class App extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'啊啊啊啊',
      home: TabDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

