import 'package:flutter/material.dart';

class CustomResult extends StatelessWidget {
  final String image;
  final String text;

  const CustomResult({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(text);

    return Stack(
      children: <Widget>[
        Positioned(
          top: 30,
          left: 10,
          right: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xff7159c1),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: const Color(0xff12a5c2),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: const Color(0xff12a5c2)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
