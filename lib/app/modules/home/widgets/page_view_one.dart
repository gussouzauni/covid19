import 'card_widget_svg.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;

  const PageViewWidget({Key key, this.top, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .60,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardWidget(
            color: 0xff7159c1,
            image: 'lib/app/assets/icon1.svg',
          ),
          CardWidget(
            color: 0xff483D8B,
            image: 'lib/app/assets/icon2.svg',
          ),
          CardWidget(
            color: 0xff00BFFF,
            image: 'lib/app/assets/icon3.svg',
          ),
        ],
      ),
    );
  }
}
