import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MyApps(),
      ),
    );

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "Ask me anything",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {


  int ball = 1;
  void changeBallNum() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }
  void change (){
    setState(() {
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              changeBallNum();
            },
            child: Image.asset('images/ball$ball.png'),
          )
        ],
      ),
    );
  }
}
