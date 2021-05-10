import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:internship/constants.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int progressValue = 70;
  var analytics = [
    ['User visit',50],['New user',52]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4BD0D5),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 25,),
          TopInfoBar(),
          SizedBox(height: 25,),
          ProgressContainer(progressValue: progressValue),
          Headings(name: "Analytics",),
          Analytics(context),
          Headings(name: "Features",),

        ],
      ),
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   icons: iconList,
      //   activeIndex: _bottomNavIndex,
      //   gapLocation: GapLocation.end,
      //   notchSmoothness: NotchSmoothness.defaultEdge,
      //   onTap: (index) => setState(() => _bottomNavIndex = index),
      //   //other params
      // ),
    );
  }

  SizedBox Analytics(BuildContext context) {
    return SizedBox(
          height:MediaQuery.of(context).size.height*0.10,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: analytics.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width*0.70,
                  decoration: BoxDecoration(
                    color: boxColor,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(analytics[index][0],style: kHeadStyle,),
                        Text(analytics[index][1].toString(),style: kHeadStyle.copyWith(color: Color(0xffc4c4c4)),)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
  }
}

class Headings extends StatelessWidget {
  String name;
  Headings({this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07,top: 15,bottom: 15),
      child: Text(name,style: kHeadStyle.copyWith(color: Color(0xFF7B7E96),fontSize: 30),),
    );
  }
}

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({
    Key key,
    @required this.progressValue,
  }) : super(key: key);

  final int progressValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Website Completeness',style: kHeadStyle,),
                  Text('$progressValue%',style: kHeadStyle,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 10,
                child: FAProgressBar(
                  currentValue: progressValue,
                  progressColor: Color(0xFF4BD0D5),
                  backgroundColor: Color(0xffc4c4c4),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffF5B714),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Improve",style: kHeadStyle.copyWith(color: Colors.white),),
                      Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            boxShadow: containerDecor,
            color: boxColor,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

class TopInfoBar extends StatelessWidget {
  const TopInfoBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.width * 0.90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Healthcare',
                  style: kHeadStyle
                ),
                Text('http://healthcareeasyliv.com',
                  style: TextStyle(
                      fontSize: 20
                  ),
                )
              ],
            ),
            Image.asset('assets/logo.png',height: MediaQuery.of(context).size.height*0.08,)
          ],
        ),
        decoration: BoxDecoration(
            boxShadow: containerDecor,
            color: boxColor,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
