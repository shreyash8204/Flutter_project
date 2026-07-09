import 'package:flutter/material.dart';

void main(){
  runApp(RentApp());
}

class RentApp extends StatelessWidget{
  const RentApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rent App",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 220, 220),
        appBar: AppBar(
          title: Text(
            "Details",
            style:TextStyle(
              fontSize:33,
              fontWeight: FontWeight.w600,
            ),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 223, 220, 220), 
            leading: Icon(Icons.arrow_back_ios_new_outlined, size: 28, weight: 700),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTc3M3wwfDF8c2VhcmNofDF8fEhPTUV8ZW58MHx8fHwxNzM4MjQzNTgzfDA&ixlib=rb-4.0.3&q=80&w=2000",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Night Hill Villa",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      
                      Text(
                        "London, Night Hill",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text(
                          "\$5900",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 0, 140, 255),
                          ),
                        ),
                        Text(
                          "/Month",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 15),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bed_outlined,
                            size: 40,
                            ),
                            SizedBox(height: 10),

                            Text(
                              "Bedrooms",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),

                            Text(
                              "5",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    width: 120,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 40, 9, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bathtub_rounded,
                            size: 40,
                          ),
                          SizedBox(height: 10),

                          Text(
                            "Bathrooms",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight:FontWeight.w600,
                            ),
                           ),
                            SizedBox(height: 10),

                            Text(
                              "6",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    width: 120,
                    height: 200,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.aspect_ratio_outlined,
                            size: 40,
                            ),
                            SizedBox(height: 10),

                            Text(
                              "Square ft",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                              SizedBox(height: 10),

                              Text(
                                "7,000 sq ft",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
                ),
              ),

            SizedBox(height: 25),

            Center(
              child: Container(
                height: 65,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Rent Now",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                    ),
                ),
              ),
            ),

            ],
          ),
        ),
      ),
    );
  }

}
    

