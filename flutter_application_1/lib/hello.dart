
import 'package:flutter/material.dart';
class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
      Center(
        child: Text(
          'hello 123',
          textDirection: TextDirection.ltr,
          style: TextStyle(
          fontSize: 20.0,
          color: Colors.blue,
          fontWeight: FontWeight.w600

          ),
        )); 
  }
}