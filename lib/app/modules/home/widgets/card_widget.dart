import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final int color;

  const CardWidget({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(color), borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
