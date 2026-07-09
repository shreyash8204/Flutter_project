import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/sqflite_page.dart';
import 'package:to_do_app/todo_model.dart';
import 'dart:developer';
import 'dart:core';


class ToDoAppUI extends StatefulWidget{
  const ToDoAppUI({super.key});

  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State{
  List<ToDoModel> todolist = [];
  //CONTROLLERS
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Color> cardColors = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  @override
  void initState(){
    super.initState();
    getData();
  }

  void getData() async{
    List<Map> cardList = await TodoDatabase().getTodoItems();
    log("CARD LIST: $cardList");
    for(var element in cardList) {
      todolist.add(
        ToDoModel(
          date: element['date'], 
          title: element['title'], 
          description: element['description'],
          id: element['id']
        ),
      );
    }
  setState(() {});
  log("TODO LIST : $todolist");
  log("TODO LIST LENGTH : ${todolist.length}");
  }

  void clearController(){
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void submit(bool doEdit, [ToDoModel? obj]){
    if(titleController.text.isNotEmpty &&
       descriptionController.text.isNotEmpty &&
       dateController.text.isNotEmpty){
      if(doEdit) {
        obj!.title = titleController.text;
        obj.description = descriptionController.text;
        obj.date = dateController.text;

        Map<String, dynamic> mapObj = {
          'title': obj.title,
          'description': obj.description,
          'date': obj.date,
          'id' : obj.id,
        };
          TodoDatabase().updateTodoItem(mapObj);
        } else {
        todolist.add(
          ToDoModel(
            title: titleController.text,
            description: descriptionController.text,
            date: dateController.text,
          ),
        );
        Map<String, dynamic> dataMap = {
          'title': titleController.text,
          'description': descriptionController.text,
          'date': dateController.text,
        };
        TodoDatabase().insertTodoItem(dataMap);
      }
      clearController();
      Navigator.of(context).pop();
      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading:
         Padding(
           padding: const EdgeInsets.only(left: 10, bottom: 10),
             child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/todo_logo.png",
              ),
              ),
         ),
              
          title: Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: Text(
            "To-Do App", 
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(255, 255, 255, 1) 
            ),
            ),
          ),
          backgroundColor: Color.fromRGBO(2, 167, 177, 1),
      ),

      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder:(context, index){
          return todoCard(cardIndex: index);
        } 
        ),
        
        floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {
              clearController();
              addBottomSheet(false);
            },
            shape: CircleBorder(),
            backgroundColor: Colors.transparent,
            child:SvgPicture.asset(
              "assets/svg/add button.svg",
              height: 60,
              fit: BoxFit.cover,
              ),
          ),
        ),
    );

  }

  Widget todoCard({required int cardIndex}){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cardColors[cardIndex % cardColors.length],
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
                          todolist[cardIndex].title,
                          style: GoogleFonts.quicksand(
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 9),
                    
                        Text(
                          todolist[cardIndex].description,
                          style: GoogleFonts.quicksand(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
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
                    todolist[cardIndex].date,
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          titleController.text = todolist[cardIndex].title;
                          descriptionController.text = todolist[cardIndex].description;
                          dateController.text = todolist[cardIndex].date;
                          addBottomSheet(true, todolist[cardIndex]);
                        },
                        child: SvgPicture.asset("assets/svg/edit.svg",
                        height: 15,
                        width: 15),
                      ),
                      
                      SizedBox(width: 13),
                      
                      GestureDetector(
                        onTap: () {
                          int id = todolist[cardIndex].id;
                          todolist.remove(todolist[cardIndex]);
                          TodoDatabase().deleteTodoItem(id);
                          setState(() {});
                            
                        },
                        child: SvgPicture.asset("assets/svg/delete.svg",
                        height: 15,
                        width: 15),
                      ),
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

  addBottomSheet(bool doEdit, [ToDoModel? obj]){
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
                  controller: descriptionController,
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
                    hintText: "Select Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    suffixIcon: Icon(Icons.calendar_month),
                  ),
                  onTap: () async{
                    DateTime? pickedDate = await showDatePicker(
                      context: context, 
                      firstDate: DateTime(2025), 
                      lastDate: DateTime(2026),
                      );
                      dateController.text = DateFormat.yMMMd().format(pickedDate!);
                  },
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
                          if(doEdit == true){
                            submit(true, obj);
                          }else{
                            submit(false);
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

        
           
          
            
             
