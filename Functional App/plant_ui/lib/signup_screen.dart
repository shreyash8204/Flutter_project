import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  State createState() => _SignUpScreen();
}

class _SignUpScreen extends State{
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController comPassController = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(Icons.arrow_back, weight: 600, size: 30),
              ),
              Image.asset("assets/images/rings 1.png",
                color: Color.fromRGBO(204, 211, 196, 1),
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
                      controller: userNameController,
                      decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
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
                  SizedBox(height: 30),
                  
                  TextField(
                    obscureText: true,
                    controller: comPassController,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
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
                   SizedBox(height: 45),

                  RichText(text: TextSpan(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
                  