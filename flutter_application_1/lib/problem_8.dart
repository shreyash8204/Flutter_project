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
          title: Text("Border Decor"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
             width: 300,
             height: 300,
             decoration: BoxDecoration(
              color: Colors.red,  // Colour to Container.
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                
              )
             ),
          ), 
          ),
      ),
    );
  }
  
}