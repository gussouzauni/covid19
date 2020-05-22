import 'package:api_rest1/app/consts/icons.dart';
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
              textAlign: TextAlign.center,
            ),
            content: Container(
              color: Colors.amber,
              width: double.maxFinite,
              height: double.maxFinite,
              child: ListView(
                padding: const EdgeInsets.all(10),
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
                          Text(cases.toString()),
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
                          Text(deaths.toString()),
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
                          Text(suspects.toString()),
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
                          Text(refuses.toString()),
                        ],
                      )),
                  Container(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            IconsApp.iconThirteen,
                            width: 40,
                            height: 40,
                          ),
                          Text(refuses.toString()),
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
