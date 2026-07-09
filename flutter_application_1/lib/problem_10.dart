import 'package:flutter/material.dart';

class problem_10 extends StatelessWidget
{
  const problem_10({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Name in Container"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 5
              ),
              
            ),
            
            child: Center(child: Text("Hello Incubators", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                
            ),
            ),
            ),
          ),
        ),
      ),
    );

  }
}