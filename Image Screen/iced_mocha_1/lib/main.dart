import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF6F2E9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(154, 101, 48, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 13,
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    ),
                    Positioned(
                      top: 50,
                      right: 15,
                      child: Icon(Icons.favorite_border, color: Colors.white, size: 35),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/Iced_Mocha.png",
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

             Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Iced Mocha",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹150.00",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 285),
                child: Text(
                  "Cup Size",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cupSizeBox("Small", false),
                    SizedBox(width: 20),
                    cupSizeBox("Medium", true),
                    SizedBox(width: 20),
                    cupSizeBox("Large", false),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, right: 255),
                child: Text(
                  "Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and industry. "
                  "Lorem Ipsum has been the industry's standard dummy 1500s, print and typesetting industry.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15.5, color: Colors.black54, fontWeight: FontWeight.bold)
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "280 Cal.",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.5 ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.remove, size: 20),
                        ),
                        SizedBox(width: 10),
                        Text("1", style: TextStyle(fontSize: 27)),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.add, size: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 60,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.brown[900],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 13),
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500),
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
 
 Widget cupSizeBox(String size, bool isSelected) {
    return Container(
      height: 43,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.brown[900] : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2.5),
      ),
      child: Text(
        size,
        style: TextStyle( fontSize: 16,
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

              

            




  
            
