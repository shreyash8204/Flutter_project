import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IcedMochaPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IcedMochaPage extends StatefulWidget {
  @override
  _IcedMochaPageState createState() => _IcedMochaPageState();
}

class _IcedMochaPageState extends State<IcedMochaPage> {
  int quantity = 1;
  String selectedSize = 'Medium';

  int getUnitPrice() {
    switch (selectedSize) {
      case 'Small':
        return 120;
      case 'Large':
        return 180;
      default:
        return 150;
    }
  }

  int getCaloriesPerCup() {
    return 280;
  }

  @override
  Widget build(BuildContext context) {
    int totalCalories = getCaloriesPerCup() * quantity;
    int price = getUnitPrice();

    return Scaffold(
      backgroundColor: const Color(0xFFF4F1EA),
      body: Column(
        children: [
          Container(
            height: 320,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(154, 101, 48, 1),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(150))
            ),
            
            child: Stack(
              children: [
                const Positioned(
                  top: 40,
                  left: 10,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                const Positioned(
                  top: 40,
                  right: 10,
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/Iced Mocha.png",
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Iced Mocha",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "₹${price * quantity}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Cup Size
                  const Text("Cup Size", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  const SizedBox(height: 10),
                  Row(
                    children: ["Small", "Medium", "Large"].map((size) {
                      final bool isSelected = selectedSize == size;
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ChoiceChip(
                          label: Text(
                            size,
                            style: TextStyle(
                              color: isSelected ? Colors.white : const Color.fromARGB(255, 62, 49, 44),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          selected: isSelected,
                          selectedColor: const Color.fromARGB(255, 112, 81, 73),
                          backgroundColor: Colors.transparent,
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: isSelected ? Colors.transparent : const Color.fromARGB(255, 51, 42, 38),
                            ),
                          ),
                          onSelected: (bool selected) {
                            if (selected) {
                              setState(() {
                                selectedSize = size;
                              });
                            }
                          },
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),

                  // Description
                  const Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  const SizedBox(height: 8),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(color: Colors.grey[700], fontSize: 20),
                  ),

                  const SizedBox(height: 20),

                  // Calories and Quantity
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$totalCalories Cal.",
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          // Decrement Button
                          SizedBox(
                            width: 36,
                            height: 36,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: const Color.fromARGB(255, 255, 253, 253),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (quantity > 1) quantity--;
                                });
                              },
                              child: const Icon(Icons.remove, size: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(quantity.toString(), style: const TextStyle(fontSize: 16)),
                          ),
                          // Increment Button
                          SizedBox(
                            width: 36,
                            height: 36,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: const Icon(Icons.add, size: 18),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  const Spacer(),

                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[800],
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Added to cart!")),
                        );
                      },
                      child: const Text(
                        "Add To Cart",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
