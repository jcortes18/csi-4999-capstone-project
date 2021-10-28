import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class MarketplaceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 140),
        scrollDirection: Axis.horizontal,
        child:
          //crossAxisAlignment: CrossAxisAlignment.start,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.book,
                      color: Colors.amber,
                      size: 80,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.chair,
                      color: Colors.amber,
                      size: 80,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.computer,
                      color: Colors.amber,
                      size: 80,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.science_sharp,
                      color: Colors.amber,
                      size: 80,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.backpack,
                      color: Colors.amber,
                      size: 80,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.amber,
                      size: 80,
                    )),
              ],
            ),
            // Row(
            //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: const <Widget>[
            //     Text('Call'),
            //     Text('Message'),
            //     Text('block'),
            //     Text('ADD', style: TextStyle(letterSpacing: 2.0, color: Colors.red),
            //     ),
            //   ],
            // ),
          // ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}
