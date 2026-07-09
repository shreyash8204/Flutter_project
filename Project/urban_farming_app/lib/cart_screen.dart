import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  final Map<String, int> cart; // productName → quantity
  final List<Map<String, dynamic>> products;

  const CartPage({super.key, required this.cart, required this.products});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late Map<String, int> cart;

  @override
  void initState() {
    super.initState();
    cart = Map.from(widget.cart); // Create a local mutable copy
  }

  double getTotalPrice() {
    double total = 0;
    cart.forEach((name, qty) {
      final product = widget.products.firstWhere((p) => p['name'] == name);
      total += product['price'] * qty;
    });
    return total;
  }

  Map<String, int> bottomCart = {}; // for bottom summary only
  Map<String, int> cartt = {}; // persistent cart shared with CartPage


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 247, 250, 1),
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(46, 137, 35, 1),
        elevation: 0,
      ),

      body: cart.isEmpty
          ? Center(
              child: Text(
                'Your cart is empty 🛒',
                style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.length,
                    padding: const EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      final name = cart.keys.elementAt(index);
                      final quantity = cart[name]!;
                      final product = widget.products.firstWhere((p) => p['name'] == name);
                      final total = product['price'] * quantity;

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Product Image
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  product['image'],
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 12),

                              // Product Details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product['name'],
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '₹${product['price']}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.green.shade700,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 6),

                                    // Quantity controls
                                    Row(
                                      children: [
                                        // Decrease button
                                        IconButton(
                                          icon: const Icon(Icons.remove_circle_outline),
                                          onPressed: () {
                                            setState(() {
                                              if (cart[name]! > 1) {
                                                cart[name] = cart[name]! - 1;
                                              } else {
                                                cart.remove(name);
                                              }
                                            });
                                          },
                                        ),
                                        Text(
                                          '$quantity',
                                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                                        ),
                                        // Increase button
                                        IconButton(
                                          icon: const Icon(Icons.add_circle_outline),
                                          onPressed: () {
                                            setState(() {
                                              cart[name] = cart[name]! + 1;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              // Delete button
                              Column(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.redAccent),
                                    onPressed: () {
                                      setState(() {
                                        cart.remove(name);
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    '₹${total.toStringAsFixed(2)}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Total and Buy Button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, -2)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Total Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '₹${getTotalPrice().toStringAsFixed(2)}',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(120, 188, 97, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Buy Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 188, 97, 1),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '🛍️ Purchased ${cart.values.fold(0, (sum, q) => sum + q)} items successfully!',
                                  style: GoogleFonts.poppins(),
                                ),
                                backgroundColor: Colors.green,
                              ),
                            );
                            setState(() => cart.clear());
                          },
                          child: Text(
                            'Proceed To Buy (${cart.values.fold(0, (sum, q) => sum + q)} items)',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
