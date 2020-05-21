import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  final int color;
  final String image;

  const CardWidget({Key key, this.color, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          child: SvgPicture.asset(image),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
