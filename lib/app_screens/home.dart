import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          margin: EdgeInsets.only(left: 20.0, top: 20.0),
          child: Text(
            "Flight",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 70.0,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
                color: Colors.white
//            fontStyle: FontStyle.italic

                ),
          )),
    );
  }
}
