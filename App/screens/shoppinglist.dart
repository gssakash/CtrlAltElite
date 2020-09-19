import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'itemdetail.dart';
class ShoppingPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        height: 345.0,
        child: CarouselSlider(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          autoPlay: true,
          height: 250+.0,
          items: [
            'https://img2.hkrtcdn.com/12972/bnr_1297161_o.jpg',
            'https://img10.hkrtcdn.com/12972/bnr_1297169_o.jpg',
            'https://img6.hkrtcdn.com/12972/bnr_1297165_o.jpg',
            'https://img8.hkrtcdn.com/12761/bnr_1276097_o.jpg',
            'https://img6.hkrtcdn.com/12869/bnr_1286805_o.jpg',
            'https://img10.hkrtcdn.com/12869/bnr_1286849_o.jpg',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient:LinearGradient(
                          colors: [
                            Color(0xff2470c7),
                            Colors.white,
                          ]
                        ),
                       // color: Colors.amber
                    ),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fitHeight),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(i),
                            ),
                          );
                        }));
              },
            );
          }).toList(),
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

              Card(child: image_carousel),
            SizedBox(height: 15,),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                 // borderRadius: BorderRadius.circular(10),
                  gradient:LinearGradient(
                    begin:Alignment.topLeft,
                        colors: [
                          Colors.blueGrey,
                          Colors.yellow,
                          Colors.white,
                        ]
                  ),

                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text('Flash Sale',style: GoogleFonts.lato(fontSize: 30,),),
                      Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 180.0,
                            width: 100.0,

                              child: new ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 15,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(width: 100,child: Card(child: new Text("Dummy")));
                                },
                              ),
                            ),
                          ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ],
                  ),

              ),
            ),
            SizedBox(height: 10,),
            new Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: 200.0,
                    width: 100.0,
                    child: Card(
                      child: new ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return SizedBox(width: 100,child: Card(child: new Text("Dummy")));
                        },
                      ),
                    ),
                  ),
                ),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(height: 10,),
            new Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: 200.0,
                    width: 100.0,
                    child: Card(
                      child: new ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return SizedBox(width: 100,child: Card(child: new Text("Dummy")));
                        },
                      ),
                    ),
                  ),
                ),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
        ),
      ),
    );
  }
}