import 'package:flutter/material.dart';

class problem3 extends StatelessWidget
{
  const problem3({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(height: 20),

              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              )
            ],
          ),
        ),
      ),
    );
  }
}