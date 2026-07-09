import 'package:flutter/material.dart';


class Problem1 extends StatelessWidget {
  const Problem1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
            onPressed: (){
            },
            ),

            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: (){

              },
              ),

          ],
        )
      )
    );
  }
}
