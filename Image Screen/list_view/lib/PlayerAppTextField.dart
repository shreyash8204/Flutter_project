import 'dart:developer';
import 'package:flutter/material.dart';

class PlayerAppTextField extends StatefulWidget{
  const PlayerAppTextField({super.key});

@override
State createState() => _PlayerAppTextFieldState();

}

class _PlayerAppTextFieldState extends State{
  TextEditingController textEditingController = TextEditingController();
  TextEditingController jerseyEditingController = TextEditingController();
  TextEditingController typeEditingController = TextEditingController();
  List<String> nameList = [];
  String myName = "";
  String jerseyNo = "";
  String type = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Player App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
            ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hint: Text("Enter Player name"),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
              onChanged: (value) {
                log("ON CHANGED : $value");
              },
              onEditingComplete: () {
                log("ON EDITING COMPLETE");
              },
              onSubmitted: (value) {
                log("ON SUBMITTED");
              },
            ),
            
            SizedBox(height: 10),
           
            TextField( controller: jerseyEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hint: Text("Enter Jersey Number"),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
              onChanged: (value) {
                log("ON CHANGED : $value");
              },
              onEditingComplete: () {
                log("ON EDITING COMPLETE");
              },
              onSubmitted: (value) {
                log("ON SUBMITTED");
              },
              ),

              SizedBox(height: 10),

               TextField(
                controller: typeEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hint: Text("Enter Player type"),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
              onChanged: (value) {
                log("ON CHANGED : $value");
              },
              onEditingComplete: () {
                log("ON EDITING COMPLETE");
              },
              onSubmitted: (value) {
                log("ON SUBMITTED");
              },
              ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                myName = textEditingController.text;
                log("Entered Name : $myName");
                nameList.add(myName);
                textEditingController.clear();

                jerseyNo = jerseyEditingController.text;
                log('Enterred Jersey No : $jerseyNo');
                nameList.add(jerseyNo);
                jerseyEditingController.clear();

                type = typeEditingController.text;
                log('Entered Type : $type');
                nameList.add(type);
                typeEditingController.clear();
                setState(() {}); 
              },
              child: Text("Show Text"),
              ),

              ListView.builder(
                itemCount: nameList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Text(nameList[index], 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}