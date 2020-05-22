import 'package:api_rest1/app/consts/icons.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              Text(
                'Voltar',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
            elevation: 3,
            title: new Text(
              "Covid 19",
              textAlign: TextAlign.center,
            ),
            content: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    IconsApp.iconOne,
                    width: 30,
                    height: 30,
                  ),
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
