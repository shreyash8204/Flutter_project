import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/custom_snackbar.dart';
import 'package:firebase_demo/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  State createState() => _SignUpScreen();
}

class _SignUpScreen extends State{
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
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(123, 123, 123, 1),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(Icons.arrow_back, weight: 600, size: 30),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Hello! Register to get Started",
                  style: GoogleFonts.poppins(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  SizedBox(height: 20,),
                  
                  TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(
                           color: Color.fromRGBO(204, 211, 196, 1),
                         ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      ),
                    ),
                  
                  SizedBox(height: 30),
                  
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                       borderSide: BorderSide(
                         color: Color.fromRGBO(204, 211, 196, 1),
                       ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    ),
                  ),
                 SizedBox(height: 45),

                  Container(
                    height: 65,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
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
                    child: Center(
                      child: GestureDetector(
                        onTap: () async{
                          if(emailController.text.trim().isNotEmpty && 
                          passwordController.text.trim().isNotEmpty){
                            try{
                              // CREATE NEW USER
                              UserCredential userCredentialsObj = await _firebaseAuth.
                              createUserWithEmailAndPassword(email: emailController.text, 
                              password: passwordController.text
                              );
                              log("User Creentials: $userCredentialsObj");
                              CustomSnackbar().showCustomSnackbar(
                                context, "Registered Successfully!!!",
                                bgColor: Colors.green,
                                );
                                Navigator.of(context).pop();
                            } on FirebaseAuthException catch (error) {
                              log("Error Code: ${error.code}");
                              log("Error Message: ${error.message}");
                              
                              if(error.code.toString() == "invalid-email"){
                                CustomSnackbar().showCustomSnackbar(
                                  context, "Enter Valid email id",
                                  bgColor: Colors.red,
                                  );
                              }else{
                                CustomSnackbar().showCustomSnackbar(
                                  context, "error.message!!",
                                  bgColor: Colors.red,
                                  );
                              }
                            }
                          }else{
                            CustomSnackbar().showCustomSnackbar(
                              context, "Enter valid Data ");
                          }
                        } ,
                        child: Text(
                          "Register",
                          style: GoogleFonts.rubik(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: 45),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context){
                            return LoginScreen();
                          } )
                      );
                    },
                    child: RichText(text: TextSpan(
                      text: "Already Have an Account ? ",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 
                          "Login Now",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue
                          ),
                        ),
                      ]
                    ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
                  