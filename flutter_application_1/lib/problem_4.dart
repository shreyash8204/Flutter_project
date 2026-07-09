import 'package:flutter/material.dart';

class problem_4 extends StatelessWidget{
  const problem_4({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.amber,
              ),
              SizedBox(height:20),   // Space between 2 Containers.
              Container(
                width: 200,
                height: 100,
                color: Colors.deepOrange,

              )                
            ],
          )
        )
        ),
    );
  }
}