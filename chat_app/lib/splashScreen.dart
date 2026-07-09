import 'package:chat_app/loginScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget{
  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  void initstate() {
    super.initState();
    navigateToScreen();
  }

  navigateToScreen(){
    Future.delayed(const Duration(seconds:2),()async{
      UserController _userController = UserController(); 
      await _userController.getUserData();
      if(_userController.isLogge!){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const ChatScreen()
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}