import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ItemPageHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode (SystemUiMode.manual, overlays: []);
    return Scaffold(
        backgroundColor: Color.fromRGBO(158,158,158,1.0),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                appBar(context),
                carousel(context),
                item(context),
              ],
            ),
          ),
        )
    );
  }
}


final List<String> imgList = [
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

Widget carousel(context){
  return Container(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: true
        ),
        items: imgList.map((i) => ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(i,
                    width: 1050,
                    height: 350,
                    fit: BoxFit.cover,)
                ]
            )
        )).toList(),
      )
  );
}


Widget appBar(context) {
  return Container(
    padding: EdgeInsets.all(25),
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FloatingActionButton(elevation: 0, child:Image.asset("assets/back_button.png", width: 27, height: 30,),
            onPressed: (){},
            backgroundColor: Colors.transparent
        ),
        Container(
          child: Column(
            children: const <Widget>[
              Text("GrizzConnet", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 193, 8, 1.0)),),
            ],
          ),
        ),
        FloatingActionButton(elevation: 0, child:Image.asset("assets/bag_button.png", width: 40, height: 40,),
            onPressed: (){},
            backgroundColor: Colors.transparent
        ),
      ],
    ),
  );
}


Widget item(context){
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: <Widget>[
        Positioned(child: FloatingActionButton(elevation: 0, child:Image.asset("assets/heart_icon_disabled.png", width: 25, height: 25,),
            backgroundColor: Colors.transparent,
            onPressed: (){}
        ),
          top: 0,
          right: 10,
        ),

        const Positioned(child: Text("Price", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 193, 8, 1.0))), top: 15
          , left: 175,),
        const Positioned(child: Text("\$100", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 193, 8, 1.0))), top: 50
            , left: 175),

      ],
    ),
  );
}