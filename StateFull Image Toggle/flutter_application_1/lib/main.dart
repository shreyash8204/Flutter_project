 
 import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  State createState()
  {
    return MyAppState();
  }
} 

class MyAppState extends State{
  List<String> imageList =[
    "https://images.bhaskarassets.com/thumb/1200x900/web2images/1884/2025/01/31/srt_1738318340.jpg",
    "https://english.cdn.zeenews.com/sites/default/files/2025/06/09/1767496-ms-dhoni-icc-hall-of-fame.jpg?im=Resize=(1200,900)",
    "https://crictoday.com/wp-content/uploads/2025/03/Rohit-Sharma-6.jpg",
    "https://images.ottplay.com/webstories/wp-content/uploads/2024/06/GRU1FZ6XIAAn5j4.png",
    "https://media.crictracker.com/media/attachments/1738757334452_Shreyas-Iyer.webp",
    "https://images.news18.com/ibnlive/uploads/2024/07/jasprit-bumrah-bowling-ap-1-2024-07-9b4a2538abf819e024735305fa04c96f.jpg"
  ];

  Map<int,String> obj = {
    0:"Sachin Tendulkar",
    1:"MS Dhoni",
    2:"Rohit Sharma",
    3:"Virat Kohli",
    4:"Shreyas Iyer",
    5:"Jasprit Bumrah"
  };

  int counter = 0;
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toggle Cricketer"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Image.network(imageList[counter],height: 400, width: 400),
                SizedBox(height: 10),
                Text("${obj[counter]}", style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                if(counter < imageList.length - 1){
                  counter++;
                }else{
                  counter = 0;
                }
                setState(() {});
              }, 
              child: Text("Next",style: TextStyle(fontSize: 30),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

