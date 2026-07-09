import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoApp()
    );
  }
}

class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State{

  List<Map> taskList = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionContoller = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Color> cardColors = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(
         flexibleSpace: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(19, 55, 350,0),
              child: SvgPicture.asset("assets/svg/todo logo.svg",
              width: 32,
              height: 32),
            ),
          ),
        title: PreferredSize(
          preferredSize: Size(166, 18), 
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 50),
            child: Text(
              "To-do list",
              style: GoogleFonts.quicksand(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(255, 255, 255, 1) 
              ),
              ),
          ),
            ),
          backgroundColor: Color.fromRGBO(2, 167, 177, 1),
      ),

      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (BuildContext context, int index){
          return taskCard(taskIndex: index);
        }
        ),
        
        floatingActionButton: SizedBox(
          height: 52,
          width: 52,
          child: FloatingActionButton(
            onPressed: () {
              addBottomSheet();
            },
            shape: CircleBorder(),
            backgroundColor: Colors.transparent,
            child:SvgPicture.asset(
              "assets/svg/add button.svg",
              fit: BoxFit.cover,
              ),
              
              
            ),
        ),
    );
  }

  Widget taskCard({required int taskIndex}){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cardColors[taskIndex % cardColors.length],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10, vertical: 18),
              child: Row(
                children: [
                   CircleAvatar(
                    radius: 26,
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    child: SvgPicture.asset("assets/svg/todo logo.svg",
                    height: 41,
                    fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 15),
                      
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          taskList[taskIndex]['title'],
                          style: GoogleFonts.quicksand(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 9),
                    
                        Text(
                          taskList[taskIndex]['description'],
                          style: GoogleFonts.quicksand(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 0, 13, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    taskList[taskIndex]['date'],
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/edit.svg",
                      height: 15,
                      width: 15),
                      SizedBox(width: 13),
                      
                      SvgPicture.asset("assets/svg/delete.svg",
                      height: 15,
                      width: 15),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  addBottomSheet(){
    return showModalBottomSheet(
      context: context, 
      builder: (BuildContext context){
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Create To-Do",
                    style: GoogleFonts.quicksand(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 139, 148, 1), 
                  ),
                  ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 15),

                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 139, 148, 1),
                  ),
                  ),
                TextField(
                  controller: descriptionContoller,
                  decoration: InputDecoration(
                    hintText: "Enter Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    )
                  ),
                ),
                SizedBox(height: 15),

                 Text(
                  "Date",
                 style: GoogleFonts.quicksand(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 139, 148, 1),
                 ),                  
                 ), 
                 TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    hintText: "Enter Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20),

                
                  Center(
                    child: SizedBox(
                      width: 330,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          String title = titleController.text;
                          String description = descriptionContoller.text;
                          String date = dateController.text;
                      
                          if(title != "" && description != "" && date != ""){
                            Map obj = {"title" : title, "description" : description, "date" : date};
                            taskList.add(obj);
                            titleController.clear();
                            descriptionContoller.clear();
                            dateController.clear();
                            Navigator.of(context).pop();
                            setState(() {});
                          }
                        }, 
                        child: Text(
                          "Submit",
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Color.fromRGBO(255, 255, 255, 1),
                          ),
                          ),
                        ),
                    ),
                  ),
                
                  SizedBox(height: 30),
              ],
            ),
          ),
        );
      }
      );
  }
  }
              
        
            
           
        
         
                


