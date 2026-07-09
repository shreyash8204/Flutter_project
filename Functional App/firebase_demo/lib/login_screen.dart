import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/custom_snackbar.dart';
import 'package:firebase_demo/home_screen.dart';
import 'package:firebase_demo/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State{
    
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
             height: 42,
             width: double.infinity,
             color: Color.fromRGBO(123, 123, 123, 1),
          ),
        
          SizedBox(height: 20),
          Text("Log in",
          style: GoogleFonts.poppins(
            fontSize: 45,
            fontWeight: FontWeight.w600
          ),
          ),
          SizedBox(height: 30),
          Container(
            height: 65,
            width: 360,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(0, 8),
                  color: Color.fromRGBO(0, 0, 0, 0.06),
                ),
              ]
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.5
                  ),
                ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 65,
            width: 360,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(0, 8),
                  color: Color.fromRGBO(0, 0, 0, 0.06),
                ),
              ]
            ),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Enter Password",
                prefixIcon: Icon(Icons.password_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.5
                  ),
                ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 65,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(124, 180, 70, 1),
                  Color.fromRGBO(62, 102, 24, 1),
                ],
              ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(0, 20),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                  ),
                ]
            ),
            child: Center(child: GestureDetector(
              onTap: () async{
                if(emailController.text.trim().isNotEmpty && 
                passwordController.text.trim().isNotEmpty){
                  try{
                    UserCredential userCredentialObj = await _firebaseAuth.
                    signInWithEmailAndPassword(
                      email: emailController.text, 
                      password: passwordController.text,
                      );

                  log("User Credentials: $userCredentialObj");
                  log("User: ${userCredentialObj.user}");
                  log("User Id: ${userCredentialObj.user!.uid}");
                  CustomSnackbar().showCustomSnackbar(
                    context, 
                    "Login Succesful!!!",
                    bgColor: Colors.green,
                    );
                    // Clear Controller
                    emailController.clear();
                    passwordController.clear();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context){
                        return HomeScreen();
                      },
                      ),
                  );
                } on FirebaseAuthException catch (error) {
                  CustomSnackbar().showCustomSnackbar(
                    context, 
                    error.message!,
                    bgColor: Colors.red,
                    );
                 }
                }else{
                  CustomSnackbar().showCustomSnackbar(
                    context, 
                    "Enter Valid Data.",
                    );
                }
              },
              child: Text(
                  "Log in",
                  style: GoogleFonts.rubik(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  ),
              
            ),
              ),
          ),
          SizedBox(height: 30),

          Text("Don't have An Account",
          style: GoogleFonts.poppins(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return SignUpScreen();
                  }),
              );
            },
            child: Text("Signup",
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.blue
            ),),
          )
        ],
      ),
    );
  }
}

