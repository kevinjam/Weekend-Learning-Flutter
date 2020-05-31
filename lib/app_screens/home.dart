import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
//          margin: EdgeInsets.only(left: 20.0, top: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white
//            fontStyle: FontStyle.italic

                          ),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    "From Congo to Chicago via Uganda",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        color: Colors.white
//            fontStyle: FontStyle.italic

                        ),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Air Congo",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white
//            fontStyle: FontStyle.italic

                          ),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    "From Uganda to India",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        color: Colors.white
//            fontStyle: FontStyle.italic

                        ),
                  ))
                ],
              ),
              FLightBookingButton()
            ],
          )),
    );
  }
}

class FlightImageFromAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    AssetImage assertImage = AssetImage()
  }
}

class FLightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book Your FLight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successful"),
      content: Text("Have a pleasant flight"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
