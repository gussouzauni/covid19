import 'package:api_rest1/app/modules/home/widgets/bottom_navigation.dart';
import 'package:api_rest1/app/modules/home/widgets/data_search.dart';
import 'package:api_rest1/app/modules/home/widgets/page_view_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7159c1),
        title: Text('Pesquisa'),
        centerTitle: true,
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
                    duration: Duration(seconds: 2),
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
        children: <Widget>[
          PageViewWidget(
            top: 10,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationTiled(),
    );
  }
}
