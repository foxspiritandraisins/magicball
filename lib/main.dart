import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        //body: BallPage(),
        body: Ball(),
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

int ballNumber = 0;

class _BallState extends State<Ball> {
  ///prevent the RandNum() autorun every onPressed
  void initState(){
    super.initState();
    if(ballNumber==0){
      RandNum();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    // RandNum();
    return Center(
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Image.asset('images/ball$ballNumber.png'),
        ),
        onPressed: () {
          setState(() {
            RandNum();
          });
        },
      ),
    );
  }
}

///function to randomize the ballNumber
int num = 0,
  counter =0;
void RandNum(){
  num=Random().nextInt(5)+1;
  if(num!=ballNumber) {
    ballNumber=num;
    counter++;
    print('counter: $counter');
    print('ball number is: $ballNumber');
  }else{
    RandNum();
  }
}
