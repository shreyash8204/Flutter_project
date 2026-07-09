import 'package:flutter/material.dart';

class problem_5 extends StatelessWidget
{
  const problem_5({super.key});

  @override
  Widget build(BluidContext)
  {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Network Images"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.network("https://crictoday.com/wp-content/uploads/2025/03/Rohit-Sharma-6.jpg"),
              ),
              //SizedBox(height:1),
              Text("Rohit Sharma", style:TextStyle(fontSize: 20)),

              Container(
                height: 200,
                width: 200,
                child: 
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkfAg24UWlezCGa9nRawI2PRAq3_dsY-M-Gw&s"),
              ),
              Text("Virat Kohli", style: TextStyle(fontSize: 20)),

              Container(
                height: 200,
                width: 200,
                child:
                Image.network("https://im.rediff.com/getahead/2013/oct/01m-s-dhoni-1.jpg?w=450&h=450"),
              ),
              Text("MS Dhoni", style: TextStyle(fontSize: 20)),
            ],
            ),
            ),

      ),
    );
  }
}