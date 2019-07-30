import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() => runApp(CarouselDemo());

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "PUBG PISTOLS";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
//
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
"images/p18c.png","images/p92.png","images/p1911.png","images/r45.png","images/r1895.png","images/uzi.png",
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(),debugShowCheckedModeBanner: false,
    home:  Scaffold(backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CarouselSlider(
                    height: 200.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    reverse: false,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    pauseAutoPlayOnTouch: Duration(seconds: 10),
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    items: imgList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                         width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Image.asset(
                              imgUrl,
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )]))));}}
