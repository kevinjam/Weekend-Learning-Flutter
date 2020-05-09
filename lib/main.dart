import 'package:flutter/material.dart';
import 'package:flutterapp/app_screens/first_screen.dart';

void main()=> runApp(new MyFlutterApp());


class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Weekend Flutter",
        home:Scaffold(
          appBar: AppBar(title: Text("My First Application"),),
          body:FirstScreen()
        )
    );
  }


}