import "dart:developer";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomSheetApp()
    );
  }
}

class BottomSheetApp extends StatefulWidget{
  const BottomSheetApp({super.key});

  @override
  State createState() => _BottomSheetApp();
}
class _BottomSheetApp extends State{
  List<Map> taskList = [];

  TextEditingController titleContoller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BottomSheetApp",
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount:taskList.length,
        itemBuilder: (BuildContext context, int index){
          return taskCard(taskIndex: index);
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addBottomSheet();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget taskCard({required int taskIndex}){
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 112,
        width: 330,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      taskList[taskIndex]['title'],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
        
                      Text(
                        taskList[taskIndex]['description'],
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                  ],
                ),
              ),
              SvgPicture.asset("assets/svg/delete icon.svg",
              height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  addBottomSheet(){
    return showModalBottomSheet(
      context: context, 
      builder: (BuildContext context){
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add Text",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: titleContoller,
                decoration: InputDecoration(
                  hintText: "Enter Your Title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: "Enter Your Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  String title = titleContoller.text;
                  String description = descriptionController.text;

                  log("Title: $title");
                  log("Description: $description");

                  if(title != "" && description != ""){
                    Map obj = {"title": title, "description": description};
                    taskList.add(obj);
                    titleContoller.clear();
                    descriptionController.clear();
                    Navigator.of(context).pop();
                    setState(() {});
                      
                  }else{
                    log("Data is not Added");
                  }
                }, 
                child: Text("Submit"),
                ),
                SizedBox(height: 40),
            ],
          ),
        );
      },
      );
  }
}