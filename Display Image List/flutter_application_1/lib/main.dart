import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget 
{
  const MyApp({super.key});

  @override
  State<MyApp>createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  List<String> imageList = [

    "https://crictoday.com/wp-content/uploads/2025/03/Rohit-Sharma-6.jpg",
    "https://img.theweek.in/content/dam/week/magazine/theweek/sports/images/2023/11/25/56-Rohit-Sharma.jpg",
    "https://feeds.abplive.com/onecms/images/uploaded-images/2023/12/15/aba4c12c0307ac56aedf5e7b2dadf69b4913f.jpeg",
    "https://pbs.twimg.com/media/Ew_GuTfVIAQ4qeE.jpg",
    "https://images.news18.com/ibnlive/uploads/2020/11/1605238569_rohit-sharma-264.jpg"
  ];

  Map<String, String> obj = {"name": "Rohit Sharma", "age" : "38", "team": "India"};
  int currentIndex = 0;

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imageList[currentIndex],
              height: 400,
              width: 400,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                if(currentIndex < imageList.length - 1)
                   {
                      currentIndex++;
                   }
                   else
                   {
                    currentIndex = 0;
                   }
                    setState(() {});


              },
              child: Text("Next", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 30),
              Text("Name: ${obj['name']}",
                style: TextStyle(fontSize: 30)
              ),
              SizedBox(height: 10),
              Text("Age : ${obj['age']}",
                  style: TextStyle(fontSize: 30)
              ),
              SizedBox(height: 10),
              Text("Team : ${obj['team']}",
                  style: TextStyle(fontSize: 30)
              ),
            ],
          ),
        ),
        ),
      );
  }
}
    