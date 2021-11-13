import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'homescreen.dart';
import 'itempage_main.dart';
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
    MarketplaceTab(),
    //covid(), // update to covid health form page
    ItemPageHome() //add settings page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
          fit: StackFit.expand,
          children: [_pageOptions[selectedPage],
            buildFloatingSearchBar(),
          ]
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 10),
          child: DotNavigationBar(
            backgroundColor: Colors.black,
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            selectedItemColor: Colors.amber,
            items: [
              DotNavigationBarItem(
                  icon: const Icon(Icons.sell),
              ),
              DotNavigationBarItem(
                  icon: const Icon(Icons.health_and_safety),
              ),
              DotNavigationBarItem(
                  icon: const Icon(Icons.settings),
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

  // search bar with profile button
  Widget buildFloatingSearchBar() {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      hint: 'Search Item...',
      scrollPadding: const EdgeInsets.only(top: 10, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      borderRadius: BorderRadius.circular(30) ,
      debounceDelay: const Duration(milliseconds: 500),
      automaticallyImplyDrawerHamburger: true,
      onQueryChanged: (query) {
        // Call your model, bloc, controller here - A callback that gets invoked when the input of the query inside the TextField changed.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: SlideFadeFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction( // profile icon showed when search is closed
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {}, //go to profile when clicked
          ),
        ),
        FloatingSearchBarAction.searchToClear( //clears search when search bar is closed
          showIfClosed: false,
        ),
      ],
      // List of search results shown below search bar
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}