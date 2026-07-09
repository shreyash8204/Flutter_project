import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantUI extends StatefulWidget{
  const PlantUI({super.key});

  @override
  State createState() => _PlantUIState();
}

class _PlantUIState extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          children: [
            Center(
            child: Image.asset("assets/images/image_2.png",
            height: 600,
            width: 600),
          ),
          
             Padding(
                padding: const EdgeInsets.only(left: 50, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   RichText(
                    text: TextSpan(
                      text: "Enjoy Your\nLife with",
                      style: GoogleFonts.poppins(
                        fontSize: 42,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Plants",
                          style: GoogleFonts.poppins(
                            fontSize: 42,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 35),
            
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(124, 180, 70, 1),
                  Color.fromRGBO(62, 102, 24, 1)]
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      blurRadius: 40,
                      offset: Offset(0, 20),
                    ),
                  ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get Started",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    ),
                    SizedBox(width: 10),
                    
                    Icon(Icons.arrow_forward_ios_outlined, color: Color.fromRGBO(255, 255, 255, 1),),
                ],
              ),
            ),
          ],
        ),
         
      
      );
    
  }

}

