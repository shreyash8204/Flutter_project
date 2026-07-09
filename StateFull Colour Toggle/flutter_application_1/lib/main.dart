import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  State createState() {
    return MyAppState();
  }
}

class MyAppState extends State
{
  bool isBlue = true;
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colour Toggle"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: isBlue ? Colors.amber : Colors.red,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if(isBlue == true)
                  {
                    isBlue = false;
                  }
                  else
                  {
                    isBlue = true;
                  }
                  setState(() {});
                },
                child: Text("Toggle", style: TextStyle(fontSize: 20)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
