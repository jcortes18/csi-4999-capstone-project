import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'marketplace_main.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Griz Connect',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    Homescreen(),
    MarketplaceTab(),
    ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOptions[selectedPage],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: DotNavigationBar(
            backgroundColor: Colors.black,
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            selectedItemColor: Colors.blue,
            items: [
              DotNavigationBarItem(
                  icon: Icon(Icons.home),
              ),
              DotNavigationBarItem(
                  icon: Icon(Icons.sell),
              ),
              DotNavigationBarItem(
                  icon: Icon(Icons.account_circle),
              ),
            ],

            currentIndex: selectedPage,
            onTap: (index){
              setState(() {
                selectedPage = index;
              });
            },
          )
        )
    );
  }
}