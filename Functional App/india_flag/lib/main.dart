import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(
          "Happy Independence Day",
          style: GoogleFonts.quicksand(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        ),
        body: 
           Row(
            // crossAxisAlignment: CrossAxisAlignment,
             children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 500,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                         ),
                      ],
                     ),
                  ),
                       
                      
              Padding(
                 padding: const EdgeInsets.fromLTRB(0, 170, 0,0),
                 child: Column(
                 
                  children: [
                        Container(
                          height: 80,
                          width: 270,
                          color: Colors.orange,
                        ),
                 
                        Container(
                          height: 80,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage("assets/images/ashok_chakra.png",
                              ),
                              ),
                          ),
                        ),
                           
                        Container(
                          height: 80,
                          width: 270,
                          color: Colors.green,
                        ),
                  ],
                ),
               ),
             ],
           ),
      ),
    );
  }
}
            
                      
                      
                      

               
              
           
        
           
                                                            
              
