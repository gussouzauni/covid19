import 'package:api_rest1/app/consts/icons.dart';
import 'package:api_rest1/app/models/covidapi.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  createAlertDialog(BuildContext context,
      [String state, cases, deaths, suspects, refuses, date]) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text('Voltar')),
            ],
            elevation: 3,
            title: new Text(
              state,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff12a5c2)),
              textAlign: TextAlign.center,
            ),
            content: Container(
              height: 330,
              width: double.maxFinite,
              decoration: new BoxDecoration(
                  border: Border.all(color: Color(0xff12a5c2), width: 1)),
              child: ListView(
                padding: const EdgeInsets.all(30.0),
                children: <Widget>[
                  Container(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            IconsApp.iconOne,
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            cases.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff12a5c2)),
                          ),
                        ],
                      )),
                  Container(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            IconsApp.iconFour,
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            deaths.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff12a5c2)),
                          ),
                        ],
                      )),
                  Container(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            IconsApp.iconFive,
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            suspects.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff12a5c2)),
                          ),
                        ],
                      )),
                  Container(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            IconsApp.iconEight,
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            refuses.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff12a5c2)),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return createAlertDialog(context);
  }
}
