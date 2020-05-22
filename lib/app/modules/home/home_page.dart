import 'package:api_rest1/app/modules/home/widgets/card_widget_covid.dart';
import 'package:api_rest1/app/modules/home/widgets/my_dots_app.dart';
import 'package:api_rest1/app/modules/home/widgets/page_view_one.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final int index;

  const HomePage({Key key, this.title = "Home", this.index}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  PageController _pageController;
  int _currentPageIndex;
  int _currentIndexDots;

  @override
  void initState() {
    _currentIndexDots = 0;
    _currentPageIndex = 0;
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff12a5c2),
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 1),
                    elevation: 3,
                    backgroundColor: const Color(0xff12a5c2),
                    content: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Gustavo Souza',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              PageViewWidget(
                top: 0,
                onChanged: (index) {
                  setState(() {
                    _currentIndexDots = index;
                  });
                },
              ),
              Positioned(
                top: _screenheight * .59,
                child: MyDotsApp(
                  currentIndex: _currentIndexDots,
                ),
              ),
              Positioned(
                  bottom: 5 + MediaQuery.of(context).padding.bottom,
                  left: 0,
                  right: 0,
                  height: _screenheight * 0.18,
                  child: CardWidgetSvg()),
            ],
          ),
          Container(
            width: 30,
            height: 30,
            color: Colors.amber,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentPageIndex,
        onItemSelected: (index) {
          setState(() => _currentPageIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.search),
              title: Text('Pesquisa'),
              activeColor: Colors.purpleAccent),
        ],
      ),
    );
  }
}
