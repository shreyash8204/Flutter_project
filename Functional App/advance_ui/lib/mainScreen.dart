import "package:advance_ui/modelui_class.dart";
import "package:advance_ui/screen1.dart";
import "package:advance_ui/screen2.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";

class AdvanceUI extends StatefulWidget{
   const AdvanceUI({super.key});

  @override
  State createState() => _AdvanceUIState();
}

class _AdvanceUIState extends State {
TextEditingController textcontroller = TextEditingController();

List<AdvanceUi> courseList = [
  AdvanceUi(
    title: 'UX Designer from Scratch.',
    color1: Color.fromRGBO(197, 4, 98, 1),
    color2: Color.fromRGBO(80, 3, 112, 1),
    image: 'assets/svg/card1_image.svg',
  ),

  AdvanceUi(
    title: 'Design Thinking The Beginner.',
    color1: Color.fromRGBO(0, 77, 228, 1),
    color2: Color.fromRGBO(1, 47, 135, 1),
    image: 'assets/svg/card2_image.svg',
  ),

];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(205, 218, 218, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 65, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu_sharp , size: 35),
              
                  Icon(Icons.notifications_none_sharp, size: 35),
              
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:22),
                    child: RichText(
                      text: 
                      TextSpan(
                        text: "Welcome to New\n",
                        style: GoogleFonts.jost(
                        fontSize: 30,
                        fontWeight: FontWeight.w400, 
                        color: Colors.black,
                      ),
                      children: <TextSpan> [
                        TextSpan(
                          text: "Educourse",
                          style: GoogleFonts.jost(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      ),
                      ),
                  ),
                     SizedBox(height: 20),
              
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Container(
                          height: 60,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: TextField(
                              cursorRadius: Radius.circular(30),
                              controller: textcontroller,
                              decoration: InputDecoration(
                                hintText: "Enter your Keyword",
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                suffixIcon: Icon(Icons.search, size: 37),
                                ),
                            ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
            SizedBox(height: 40),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(height: 15),

                        SizedBox(
                          height: 280,
                          child: ListView.builder(
                            itemCount: courseList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index){
                              return courseCard(courseIndex: index, context: context);
                            }
                            ),
                        ),
                        SizedBox(height: 20),

                        Row(
                          children: [
                            Text("Course By Category",
                            style:GoogleFonts.jost(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SvgPicture.asset("assets/svg/UI.svg", height: 80,),
                              ),
                              SvgPicture.asset("assets/svg/visual.svg",height: 80),
                              SvgPicture.asset("assets/svg/illustration.svg",height: 80),
                              SvgPicture.asset("assets/svg/photo.svg",height: 80),
                            ],
                          ),
                      ],
                  ),
                ),
              ),
            ),
          ],
      ),
    ),
    );
  }

  Widget courseCard({required int courseIndex, required BuildContext context}){
    return GestureDetector(
      onTap: () {
        if (courseIndex == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EduScreen1(),
            ),
          );
        } else if (courseIndex == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EduScreen2(),
            ),
          );
        }
      },

      child: Row(
        children: [
          Container(
            height: 280,
            width: 220,
            margin: EdgeInsets.only(right: 25),
           decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [courseList[courseIndex].color1, 
                courseList[courseIndex].color2],
                ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(courseList[courseIndex].title,
                    style: GoogleFonts.jost(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(courseList[courseIndex].image,
                    height: 230,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
                    
                              
            
          


          
         
                