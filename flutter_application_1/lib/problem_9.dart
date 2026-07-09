import 'package:flutter/material.dart';

class problem_9 extends StatelessWidget
{
  const problem_9({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Circle"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,  
             shape: BoxShape.circle,  // Makes container Circular.
            ),
          ),
        ),
      ),
    );
  }
}