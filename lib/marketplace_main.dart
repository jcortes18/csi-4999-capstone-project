import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class MarketplaceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image1 = AssetImage('assets/images/computerforsale.jpg');
    var image2 = AssetImage('assets/images/textbookforsale.jpg');
    var image3 = AssetImage('assets/images/backpackforsale.jpg');
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 140),
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                  SizedBox(
                    child: Text('Major Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          fontSize: 25,
                        )),
                  )
                ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(children: [
                        TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.book,
                              color: Colors.amber,
                              size: 100,
                            )),
                        const Text('Books')
                      ]),
                      Column(children: [
                        TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.chair,
                              color: Colors.amber,
                              size: 100,
                            )),
                        const Text('Furniture')
                      ]),
                      Column(children: [
                        TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.computer,
                              color: Colors.amber,
                              size: 100,
                            )),
                        const Text('Electronics')
                      ]),
                      Column(children: [
                        TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.science_sharp,
                              color: Colors.amber,
                              size: 100,
                            )),
                        const Text('Lab Kits')
                      ]),
                      Column(children: [
                        TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.backpack,
                              color: Colors.amber,
                              size: 100,
                            )),
                        const Text('Supplies')
                      ]),
                      Column(children: [
                        TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.amber,
                              size: 100,
                            )),
                        const Text('Favorites')
                      ]),
                    ],
                  ),
                ),
                // Container(
                //     height: 300,
                //     child:
                //     ListView(
                //       //scrollDirection: Axis.vertical,
                //       children: [
                //         Column(
                //           children: [
                //             Expanded(child:
                //             Card(
                //               elevation: 4.0,
                //               child: Column(
                //                 children: [
                //                   const ListTile(
                //                     title: Text('Computer for sale'),
                //                     subtitle: Text('Nov 4, 2021'),
                //                     trailing: Icon(Icons.favorite_outline),
                //                   ),
                //                   Container(
                //                     height: 200.0,
                //                     child: Ink.image(
                //                       image: image1,
                //                       fit: BoxFit.cover,
                //                     ),
                //                   ),
                //                   Container(
                //                     padding: EdgeInsets.all(16.0),
                //                     alignment: Alignment.centerLeft,
                //                     child: Text('\$2300.00'),
                //                   ),
                //                   InkWell(
                //                     onTap: () {},
                //                     splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                //                     highlightColor: Colors.transparent,
                //                   )
                //                 ],
                //               )
                //           )),
                //             Expanded(child:
                //               Card(
                //                 elevation: 4.0,
                //                 child: Column(
                //                   children: [
                //                     const ListTile(
                //                       title: Text('College Physics Textbook'),
                //                       subtitle: Text('Nov 1, 2021'),
                //                       trailing: Icon(Icons.favorite_outline),
                //                     ),
                //                     Container(
                //                       height: 200.0,
                //                       child: Ink.image(
                //                         image: image2,
                //                         fit: BoxFit.cover,
                //                       ),
                //                     ),
                //                     Container(
                //                       padding: EdgeInsets.all(16.0),
                //                       alignment: Alignment.centerLeft,
                //                       child: const Text('\$50.00'),
                //                     ),
                //                     InkWell(
                //                       onTap: () {},
                //                       splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                //                       highlightColor: Colors.transparent,
                //                     )
                //                   ],
                //                 )
                //             )),
                //             Expanded(child:
                //               Card(
                //                 elevation: 4.0,
                //                 child: Column(
                //                   children: [
                //                     const ListTile(
                //                       title: Text('Nike Air Backpack'),
                //                       subtitle: Text('Oct 30, 2021'),
                //                       trailing: Icon(Icons.favorite_outline),
                //                     ),
                //                     Container(
                //                       height: 200.0,
                //                       child: Ink.image(
                //                         image: image3,
                //                         fit: BoxFit.cover,
                //                       ),
                //                     ),
                //                     Container(
                //                       padding: EdgeInsets.all(16.0),
                //                       alignment: Alignment.centerLeft,
                //                       child: const Text('\$20.00'),
                //                     ),
                //                     InkWell(
                //                       onTap: () {},
                //                       splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                //                       highlightColor: Colors.transparent,
                //                     )
                //                   ],
                //                 )
                //               ))
                //             ],
                //     )]))
              ] // Column Children
              )),
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

// Card buildCard(heading, price, image, date, context) {
//   var supportingText =
//       'Beautiful home to rent, recently refurbished with modern appliances...';
//   return Card(
//       elevation: 4.0,
//       child: Column(
//         children: [
//           ListTile(
//             title: Text(heading),
//             subtitle: Text(date),
//             trailing: Icon(Icons.favorite_outline),
//           ),
//           Container(
//             height: 200.0,
//             child: Ink.image(
//               image: image,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(16.0),
//             alignment: Alignment.centerLeft,
//             child: Text(price),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
//             highlightColor: Colors.transparent,
//           )
//           // ButtonBar(
//           //   children: [
//           //     TextButton(
//           //       child: const Text('CONTACT AGENT'),
//           //       onPressed: () {/* ... */},
//           //     ),
//           //     TextButton(
//           //       child: const Text('LEARN MORE'),
//           //       onPressed: () {/* ... */},
//           //     )
//           //   ],
//           // )
//         ],
//       ));
// }
