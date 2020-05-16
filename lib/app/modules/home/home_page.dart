import 'package:api_rest1/app/modules/home/widgets/bottom_navigation.dart';
import 'package:api_rest1/app/modules/home/widgets/my_dots_app.dart';
import 'package:api_rest1/app/modules/home/widgets/page_view_one.dart';
import 'package:api_rest1/app/modules/home/widgets/search/data_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7159c1),
        leading: Icon(Icons.star_border),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 1),
                    elevation: 3,
                    backgroundColor: const Color(0xff7159c1),
                    content: Text(
                      'Favoritos',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          PageViewWidget(
            top: 0,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            top: _screenheight * .59,
            child: MyDotsApp(
              currentIndex: _currentIndex,
            ),
          ),
          Positioned(
            bottom: 10 + MediaQuery.of(context).padding.bottom,
            left: 0,
            right: 0,
            height: _screenheight * 0.15,
            child: Container(
              color: Color(0xff7159c1),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Container(
                      width: 120,
                      height: 50,
                      color: Colors.white,
                    ),
                  );
                },
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationTiled(),
    );
  }
}
