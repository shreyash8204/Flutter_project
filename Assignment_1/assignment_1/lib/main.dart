//import 'package:assignment_1/problem1.dart';
//import 'package:assignment_1/problem2.dart';
import 'package:assignment_1/problem3.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: problem3()
    );
  }
}