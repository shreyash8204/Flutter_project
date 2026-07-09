import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mumbai Indians XI"),
          backgroundColor: const Color.fromARGB(255, 17, 117, 198),
          centerTitle: true,
        ),
        
        body:
        Column(
            children: [
              SizedBox(height: 20),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                 height: 170,
                 child:Column(
                   children :[
                    Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/6.png",
                       height: 130
                    ),   
                    Text("Rohit Sharma",textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
                ],
               ),
              ),

              Container(
                height: 170,
                child: Column(
                  children: [
                    Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/743.png",
                      height: 130
                    ),
                    Text("Ryan Rickelton(WK)",textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
                ],
               ), 
              ),

               Container(
                height: 170,
                child:Column(
                  children: [
                    Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/1941.png",
                      height: 130
                    ),
                    Text("Will Jacks", textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
                ],
              ),
            ),
          ],
        ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/174.png",
                          height: 130
                        ),
                        Text("SuryaKumar Yadav", textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  
                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/993.png",
                          height: 130
                        ),
                        Text("Tilak Varma", textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),

                      ],
                    ),
                  ),

                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/54.png",
                          height: 130
                        ),
                        Text("Hardik Pandya(C)", textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/3107.png",
                          height: 130
                        ),
                        Text("Naman Dhir", textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),

                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://static.toiimg.com/photo/120897206.cms",
                          height: 130
                        ),
                        Text("Mitchell Santner",textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),

                  Container(
                    height: 170,
                    child: Column(
                       children: [
                         Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/9.png",
                           height: 130
                         ),
                         Text("Jasprit Bumrah",textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
                       ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/91.png",
                          height: 130
                        ),
                        Text("Deepak Chahar", textAlign: TextAlign.center, style: TextStyle(fontSize: 17),),
                      ],
                    ),
                  ),

                  Container(
                    height: 170,
                    child: Column(
                      children: [
                        Image.network("https://documents.iplt20.com/ipl/IPLHeadshot2025/66.png",
                          height: 130
                        ),
                        Text("Trent Boult", textAlign: TextAlign.center, style: TextStyle(fontSize: 17),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  } 
}

            
                        

                

                  

                
              
              

          
          
              
        
        

                
        
    
  
