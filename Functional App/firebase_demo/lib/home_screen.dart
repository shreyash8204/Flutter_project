import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  },
                  ),
                  (route) => false,
                   
                  );
            }, 
            icon: Icon(Icons.logout),
        ],
      ),
      body: Column(
        children: [
          Image.asset("assets/images/cricket_image_1.png",
          height: 200,
          width: 200),
        ],
      ),
    );
  }
}