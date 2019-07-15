// import 'dart:collection';

import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_demo.dart';
import './demo/layout_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
      splashColor: Colors.white70
    ),
  );
 }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('navigation button is pressed!'),
          // ),
          title: Text("I'm Zoro.qqqq"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search button is pressed!'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_atm)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationDemo()
      )
    );
  }
}
