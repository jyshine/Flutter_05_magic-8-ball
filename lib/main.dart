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
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
      backgroundColor: Colors.blue.shade700,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BallState();
  }
}

class _BallState extends State {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
