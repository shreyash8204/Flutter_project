import 'package:flutter/material.dart';

class problem_8 extends StatelessWidget
{
  const problem_8({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Round Border"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 3.0,
              ),
                borderRadius: BorderRadius.circular(20),
            ),
            
          ),
        ),
      ),
    );
  }
}