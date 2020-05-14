import 'package:api_rest1/app/modules/home/widgets/pageview_widget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        //add app bar here if will want
        PageViewWidget(
          top: _screenHeight * .10,
        )
      ],
    );
  }
}
