import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                //lignment: Alignment.centerLeft,
                child: Image.asset(
                  "assets/images/sign_up logo.png",
                  width: 350,
                  fit: BoxFit.fitWidth,
                )
                ),
            ),
            SizedBox(height: 20),

            Text(
              "Sign Up Now",
              style: GoogleFonts.exo2(
                fontSize: 25, 
                fontWeight: FontWeight.w600
                ),
              ),

              Text(
                "Please fill the detail and create account",
                style: GoogleFonts.exo2(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                 ),
                ),
                SizedBox(height: 20),

                Image.asset(
                  "assets/images/sign_up image.png",
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                  ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(370,50)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(34, 124, 227, 1)),
                  ), 
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.exo2(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                      ),
                    ),
                    ),
                    SizedBox(height: 20),
                    
                    RichText(text: 
                    TextSpan(
                      text: "Already have an Account?  ",
                      style: GoogleFonts.exo2(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Login",
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
              
