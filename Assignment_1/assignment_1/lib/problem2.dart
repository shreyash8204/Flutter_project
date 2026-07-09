import 'package:flutter/material.dart';

class problem2 extends StatelessWidget
{
  const problem2({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Info"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name : Shreyash Chavan", style: TextStyle(fontSize: 24)),
              Text("College Name : Fergusson College", style: TextStyle(fontSize: 24)),
              Text("Branch Name : Computer Science", style: TextStyle(fontSize: 24)),
            ],
          ),
        ) ,
      ),
    );
  }
}