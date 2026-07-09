import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Property App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Property Details", 
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.w600)),
          leading: Icon(Icons.arrow_back, size: 30),
          centerTitle: true,
        ),
        
        body:
           Padding(
            padding: const EdgeInsets.fromLTRB(17, 15, 17,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                    image: NetworkImage("https://imagecdn.99acres.com/media1/30226/13/604533403M-1749231125875.webp",
                    ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  ),
                ),
                
                SizedBox(height: 20),
                 Text(
                  "Dream House", 
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                    ),
                 ),

                 SizedBox(height: 20),
                 Row(
                 
                  children: [
                    Icon(Icons.square_outlined, color: Colors.amber, size: 25),
                    SizedBox(width: 5),
                    Text("230 m", style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(width: 8),

                    Icon(Icons.bed_outlined, color: Colors.amber, size: 25),
                    SizedBox(width: 5),
                    Text("3 Bedrooms", style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(width: 8),

                    Icon(Icons.bathroom_outlined, color: Colors.amber, size: 25),
                    SizedBox(width: 5),
                    Text("4 Bathrooms", style: TextStyle(fontSize: 19),
                    ),
                  ],
                 ),

                 SizedBox(height: 15),
                 Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzbtWABJTE2pZr2-lcZCgsbTtjckaM0E9x3w&s"),
                          ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Text(
                          "Owner", 
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            ),
                          ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                        ),
                      ],
                    ),
                    
                    SizedBox(width: 90),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 178, 240, 179),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.green,
                        ),
                    ),
                    
                    SizedBox(width: 15),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 178, 240, 179),
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.message,
                        color: Colors.green,
                        ),
                    ),
                  ],
                 ),
                 SizedBox(height: 20),
                 Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    SizedBox(height: 15),

                    Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                               color: const Color.fromARGB(255, 178, 240, 179),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.location_on, color: Colors.green),
                          ),
                          SizedBox(width: 10),
                      Text(
                        "237,Big Apartments, New York, USA",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                        ],
                      ),
                      
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Text(
                            "\$2000/month",
                            style: 
                            TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 21, 127, 25)
                            ),
                          ),
                          SizedBox(width: 40),
                          Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 21, 127, 25),
                            ),
                          child: Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),  
                          ),
                          

                        ],
                      ),
              ],
            ),
          ),
      ),
    );
  }
}
                      
        
                 
                
                  
                 

