import 'package:firebase_demo/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  void navigateToScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context){
            return LoginScreen();
          },
        ),
      );
    }
    ); 
    
  }
  @override
  Widget build(BuildContext context){
    navigateToScreen(context);
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/cricket_image.webp"),
      ),
    );
  }
}