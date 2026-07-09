import 'package:advance_ui/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class EduScreen2 extends StatefulWidget{
  const EduScreen2({super.key});

  @override
  State createState() => _EduScreen2State();
}

class _EduScreen2State extends State{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(1, 47, 135, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
               Container(
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment .bottomCenter,
                    colors:[ Color.fromRGBO(0, 77, 228, 1),
                            Color.fromRGBO(1, 47, 135, 1),] 
                            ),
                ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 65, 350, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdvanceUI(), 
                          ), 
                        );
                      },
                      child: Icon(Icons.arrow_back, size: 35)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 40),
                    child: Column(
                      children: [
                        RichText(
                            text:
                            TextSpan(
                              text: "Design Thinking The Beginner.\n",
                              style: GoogleFonts.jost(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                              ),
                              
                              children: <TextSpan> [
                                TextSpan(
                                  text: "Basic guideline & tips & tricks for how to become a UX designer easily.",
                                  style: GoogleFonts.jost(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]
                            ), 
                         ),
                         SizedBox(height: 20),
                         Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/contact.png"),
                            ),
                            SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                text: "Author: ",
                                style: GoogleFonts.jost(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan> [
                                  TextSpan(
                                    text: "John",
                                    style: GoogleFonts.jost(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              ),
                              
                              SizedBox(width: 45),
                              Row(
                                children: [
                                  Text(
                                    "4.7",
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),

                                  Icon(
                                    Icons.star, 
                                    color: Color.fromRGBO(255, 146, 0, 1),
                                    size: 18,
                                  ),

                                  Text(
                                    "(50 review)",
                                    style: GoogleFonts.jost(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                          ],
                         ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
         
         Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Column(
                    children: [
                       Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Introduction\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "lorem ipsum is simple dummy text",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Creative UI/UX Designer\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Designing User-friendly digital Experience",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Product Designer(UI/UX)\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Focused on building intuitive product",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "UI/UX Specialist\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Crafting seamless interactions",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Mobile App UI/UX Designer\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Designing User-friendly digital Experience",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Web UI/UX Designer\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Designing User-friendly digital Experience",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Visual and UX Design\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Designing User-friendly digital Experience",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Creative UI/UX Designer\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Designing User-friendly digital Experience",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        Container(
                         height: 70,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 8)
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset("assets/svg/youtube_icon.svg",
                                  fit: BoxFit.cover
                                    ),
                              ),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                        
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "UI/UX Designer\n",
                                        style: GoogleFonts.jost(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Crafting Seamless Interactions",
                                            style: GoogleFonts.jost(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                    
                                      ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ),
          ),
            
          ],
        ),
      ),
    );
  }
}
            
          

          
                


                          
                             
                              
                              



