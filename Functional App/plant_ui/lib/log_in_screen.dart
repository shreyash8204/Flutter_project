import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget{
  const LogInScreen({super.key});

  @override
  State createState() => _LogInScreenState();
}

class _LogInScreenState extends State{
  TextEditingController numberController = TextEditingController();
  
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
          Padding(
            padding: const EdgeInsets.only(right: 250,),
            child: Image.asset("assets/images/rings.png"),
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
              controller: numberController,
              decoration: InputDecoration(
                hintText: "Mobile Number",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(204, 211, 196, 1),
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
            child: Center(child: Text(
              "Log in",
              style: GoogleFonts.rubik(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              ),
              ),
          ),
           Image.asset("assets/images/snake_plant.png",
           height: 400,
          ),
        ],
      ),
    );
  }

}