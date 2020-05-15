import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class BottomNavigationTiled extends StatefulWidget {
  @override
  _BottomNavigationTiledState createState() => _BottomNavigationTiledState();
}

class _BottomNavigationTiledState extends State<BottomNavigationTiled> {
  int currentIndex;
  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TitledBottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        print('Selected: $index');
      },
      items: [
        TitledNavigationBarItem(title: Text('Home'), icon: Icons.home),
        TitledNavigationBarItem(title: Text('Search'), icon: Icons.search),
      ],
    );
  }
}
