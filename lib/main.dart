import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void setBallNumber(){
    ballNumber = Random().nextInt(4) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(

    child: FlatButton(
        onPressed: (){
          setState(() {
            setBallNumber();
      });
    },
    child: Image.asset('images/ball$ballNumber.png'),
     ),
    );
  }
}

