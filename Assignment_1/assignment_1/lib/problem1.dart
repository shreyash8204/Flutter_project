import 'package:flutter/material.dart';

class Problem1 extends StatelessWidget
{
  const Problem1({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('Hello Flutter' ,style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}