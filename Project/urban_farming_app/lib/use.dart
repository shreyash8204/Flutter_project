
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';


// class CartPage extends StatefulWidget {
//   final Map<String, int> cart;
//   final List<Map<String, dynamic>> products;

//   const CartPage({super.key, required this.cart, required this.products});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     double total = 0;
//     widget.cart.forEach((name, qty) {
//       final product = widget.products.firstWhere((p) => p['name'] == name);
//       total += product['price'] * qty;
//     });

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your Cart'),
//         backgroundColor: const Color.fromRGBO(120, 188, 97, 1),
//       ),
//       body: widget.cart.isEmpty
//           ? const Center(child: Text('Your cart is empty'))
//           : ListView(
//               padding: const EdgeInsets.all(16),
//               children: [
//                 ...widget.cart.entries.map((entry) {
//                   final product =
//                       widget.products.firstWhere((p) => p['name'] == entry.key);
//                   return Card(
//                     child: ListTile(
//                       leading: Image.network(product['image'], width: 50),
//                       title: Text(product['name']),
//                       subtitle: Text('₹${product['price']} x ${entry.value}'),
//                       trailing: Text(
//                           '₹${(product['price'] * entry.value).toStringAsFixed(2)}'),
//                     ),
//                   );
//                 }),
//                 const Divider(),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Total: ₹${total.toStringAsFixed(2)}',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.bold, fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }