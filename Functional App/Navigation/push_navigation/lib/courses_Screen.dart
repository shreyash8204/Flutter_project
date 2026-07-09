import 'package:flutter/material.dart';
import 'package:push_navigation/profile_screen.dart';

class CourseScreen extends StatelessWidget{
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Courses Screen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,

          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.keyboard_arrow_left),
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Courses Screen",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return ProfileScreen();
                  },
                  ),
              );
            } , 
            child: Text("Profile"), 
            )
          ],
        ),
      ),
    );
  }
}