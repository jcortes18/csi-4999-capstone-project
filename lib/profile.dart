import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';


class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrizzConnect Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green,
      ),
      home: const Center(child: Text('profile')),
    );
  }
}
