import 'package:flutter/material.dart';
import 'package:internship/constants.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4BD0D5),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25,),
          TopInfoBar(),
          SizedBox(height: 25,),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Website Completeness'),
                        Text('70%'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 10,
                      child: FAProgressBar(
                        currentValue: 80,
                        progressColor: Color(0xFF4BD0D5),
                        backgroundColor: Color(0xffc4c4c4),
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
          )
        ],
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
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
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
