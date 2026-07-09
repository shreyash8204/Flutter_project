import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatefulWidget{
  const VerificationScreen({super.key});

  @override
    State createState() => _VerificationScreen();
}

class _VerificationScreen extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 42,
            width: MediaQuery.of(context).size.width,
             color: Color.fromRGBO(123, 123, 123, 1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Icon(Icons.arrow_back, weight: 5, size: 30,),
                   Image.asset("assets/images/rings 1.png",
                    color: Color.fromRGBO(204, 211, 196, 1),
                    ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Verification\n",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                    children: <TextSpan> [
                      TextSpan(
                        text: "\nEnter the OTP code from the phone we just send you",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]
                  ),
                  ),
                  SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color.fromRGBO(204, 211, 196, 1,),
                        width: 2.5
                        ),
                      ),
                    ),
                    Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color.fromRGBO(204, 211, 196, 1,),
                        width: 2.5
                        ),
                      ),
                    ),
                    Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color.fromRGBO(204, 211, 196, 1,),
                        width: 2.5
                        ),
                      ),
                    ),
                    Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color.fromRGBO(204, 211, 196, 1,),
                        width: 2.5
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),

                RichText(text: TextSpan(
                  text: "Don't Receive OTP Code!",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Resend",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 30),

                Container(
                  height: 60,
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
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.rubik(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
              
              
              
              