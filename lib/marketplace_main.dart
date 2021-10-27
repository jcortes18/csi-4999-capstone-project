import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';


class MarketplaceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrizzConnect Marketplace',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: const Center(child: Text('marketplace')),
    );
  }
}
