import 'package:flutter/material.dart';

class problem_2 extends StatelessWidget {
  const problem_2({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.orange,
          actions:[
            IconButton(
              icon: Icon(Icons.login),
              onPressed: (){

              },
              ),
          ],
        ),
      )
    );
  }
}