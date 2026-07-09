import 'package:flutter/material.dart';

void main() {
  runApp(ShoeApp());
}

class ShoeApp extends StatelessWidget {
  const ShoeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shoe App",
      home: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:const EdgeInsets.fromLTRB(10, 27, 10, 10),
                    child: Text(
                      "Shoes",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 70, 94, 234),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 27, 20, 10), 
                    child: Icon(Icons.shopping_cart_outlined, color: const Color.fromARGB(255, 70, 94, 234)),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 420,
                color: Color(0xFFE5E8FD),
                child: Transform.translate(
                  offset: Offset(0, 10),
                  child: Image.asset(
                    "assets/images/Nike shoes.png",
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              "Nike Air Force 1 “07",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                tagBox("SHOES"),
                SizedBox(width: 10),
                tagBox("FOOTWEAR"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, ear-echoing '80s construction and reflective-design Swoosh logos.",
              style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Quantity",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 17),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.remove, size: 18),
                    ),
                    SizedBox(width: 12),
                    Text("1", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 12),
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.add, size: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 70, 94, 234),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  "PURCHASE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
  }

  Widget tagBox(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 70, 94, 234),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }

