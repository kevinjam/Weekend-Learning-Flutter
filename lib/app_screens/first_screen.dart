import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Center(
          child: Text(
            generateRadomNumber(),
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 40.0),)

      ),
    ) ;
  }

  String generateRadomNumber(){
    var random = Random();
    return "Your lucky number is ${random.nextInt(10)}";

  }

}