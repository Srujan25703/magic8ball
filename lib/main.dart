import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void ball(){
    count = Random().nextInt(5)+1;
    print('i got clicked');
  }
  int count =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: TextButton(child: Image.asset('images/ball$count.png'),onPressed: (){
          setState(() {
            ball();
          });
        },),
      ),
    );
  }
}


