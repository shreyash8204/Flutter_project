import 'package:chat_app/loginScreen.dart';
import 'package:chat_app/signupScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signupscreen(),
    );
  }
}


