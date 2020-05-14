import 'package:api_rest1/app/modules/home/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  final double top;

  const PageViewWidget({Key key, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .60,
      left: 0,
      right: 0,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[CardWidget(), CardWidget()],
      ),
    );
  }
}
