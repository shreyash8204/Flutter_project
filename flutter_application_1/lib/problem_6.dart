import 'package:flutter/material.dart';

class problem_6 extends StatelessWidget
{
  const problem_6({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Border"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.red,
                width: 3.0,
              )
            ),
            child: Center(child: Text("300 x 300 Box")),
          ) 
        ),
      ),
    );
  }
}