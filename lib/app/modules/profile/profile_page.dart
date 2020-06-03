import 'package:api_rest1/app/modules/profile/widgets/draw_clip.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipPath(
            clipper: DrawClip(),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: size.height * 0.5,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Color(0xffE0647B), Color(0xff12a5c2)])),
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 70.0,
                          backgroundImage: NetworkImage(
                              'https://gussouzauni.github.io/portfolio/img/minhaimagem.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          'Gustavo Souza',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Color(0xffE0647B), Color(0xff12a5c2)])),
                  ),
                  Container(
                    width: size.width,
                    height: 100,
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    width: size.width,
                    height: 100,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
