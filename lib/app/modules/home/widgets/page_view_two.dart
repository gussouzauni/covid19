import 'package:api_rest1/app/modules/home/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class PageViewTwo extends StatelessWidget {
  final double top;

  const PageViewTwo({Key key, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * 80,
      left: 0,
      right: 0,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardWidget(
            color: 0xff7159c1,
          ),
        ],
      ),
    );
  }
}
