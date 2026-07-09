import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/login_screen.dart';
import 'package:firebase_demo/signup_screen.dart';
import 'package:firebase_demo/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(
  //   options: FirebaseOptions(
  //     apiKey: "AIzaSyDHJkBjEcaUJRsH6YSfsNXxTq886tWYpMA", 
  //     appId: "1:202670286877:android:14fd89042b38b1efab7ef4", 
  //     messagingSenderId: "202670286877", 
  //     projectId: "fir-demo-1be49",
  //     ),
  //);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen()
    );
  }
}
