import 'package:flutter/material.dart';

class problem_3 extends StatelessWidget {
  const problem_3({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Core2Web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
         body: Center(
          child : Container(
            width: 360,
            height: 200,
            color: Colors.blue,
          )
         )
          

      ),
    );
  }
}