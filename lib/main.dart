import 'package:flutter/material.dart';
import 'package:internship/screens/Body.dart';

void main() {
  runApp(init());
}
class init extends StatelessWidget {
  const init({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Body(),
    );
  }
}
