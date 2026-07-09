import "package:flutter/material.dart";
import "package:plant_ui/log_in_screen.dart";
import "package:plant_ui/signup_screen.dart";
import "package:plant_ui/verification_screen.dart";
import "package:plant_ui/main_screen.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  } 
}

