

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //oginController _loginController = LoginController();

  bool isLoading = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/images/login_logo.png",
              width: MediaQuery.of(context).size.width*0.95,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Login Now",
            style: GoogleFonts.exo2(
              fontSize: 25, 
              fontWeight: FontWeight.w600),
          ),

          Text(
            "Please login to continue using our app",
            style: GoogleFonts.exo2(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 180),

            ElevatedButton(onPressed: () async{
              // isLoading = true;
              // setState(() {});

              // bool status = await _loginController.loginUser(
              //   contex: context,
              //   email: emailController.text,
              //   password: passwordController.text,
              // );
              // if(status){

              // }
            },
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(380,50)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(34, 124, 227, 1))
            ), 
            child: Text("Login", style: GoogleFonts.exo2(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 18, 
              fontWeight: FontWeight.w600),
              
              ),
              ),

             RichText(text: 
             TextSpan(
              text: "Don't have Account?",
              style: GoogleFonts.exo2(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Sign Up",
                  style: GoogleFonts.exo2(
                    color: const Color.fromARGB(255, 9, 127, 223),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]
             ),
             ),
        ],
      ),
    );
  }
}

