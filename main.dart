import 'package:animated_home/guns.dart';
import 'package:flutter/cupertino.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter/material.dart';
import 'screen.dart';
void main()=> runApp(MaterialApp(
  title: 'Screen',
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));

Color firstColor=Color(0xFFF47D15);
Color secondColor=Color(0xFFEF7772C);
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView(
        children: <Widget>[
          HomeScreenTop(),
          SizedBox(height: 5.0,),
    Container(height: 400.0,child: CarouselDemo(),)
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child:
        Container(
          height:30.0,
          color: Color(0xFFF47D15),
          child: Marquee(
            text: "Powered by.....",
            style: TextStyle(fontWeight: FontWeight.bold),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 50.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 2),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds:200),
          decelerationCurve: Curves.easeOut,
          )
        ),)
    );
  }
}
class HomeScreenTop extends StatefulWidget{
  @override
  _HomeScreenTopState createState()=> _HomeScreenTopState();
}
class _HomeScreenTopState extends State<HomeScreenTop>{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper() ,
          child: Container(
            height: 150.0,
            decoration: BoxDecoration(gradient: LinearGradient(
              colors: [firstColor,secondColor],
            )),
            child:

            Column (children: <Widget>[
              SizedBox(height:30.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child:Row(children: <Widget>[
                  Text('ContactUs',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  Icon(Icons.phone),
                  Spacer(),
                  Text('AboutUs',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ],
                )
                ,),
            ],
            ),
          ),
        ),

      ],
    );
  }
}