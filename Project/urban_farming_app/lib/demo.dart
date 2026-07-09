// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';

// // class Demo extends StatefulWidget {
// //   const Demo({super.key});

// //   @override
// //   State<Demo> createState() => _DemoState();
// // }

// // class _DemoState extends State<Demo> {
// //   String selectedCategory = 'All';
// //   String searchQuery = '';
// //   double cartOffset = 20;

// //   final List<Map<String, dynamic>> products = [
// //     {
// //       'name': 'Organic Tomato Seeds',
// //       'brand': 'GreenThumb Gardens',
// //       'price': 19,
// //       'oldPrice': 15.99,
// //       'rating': 4.8,
// //       'reviews': 124,
// //       'category': 'Seeds',
// //       'image':
// //           'https://imgs.search.brave.com/YRa-Wy4lcnNQCqcu9dHk1xO1ppkG0Q_wcLO0_tD3jZg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cudXJiYW5wbGFudC5pbi9jZG4vc2hvcC9maWxlcy9Ub21hdG9jb3B5LndlYnA_dj0xNjg2NTc4NjM0JndpZHRoPTEyMDA',
// //       'available': true,
// //     },
// //     {
// //       'name': 'Herb Growing Kit',
// //       'brand': 'Urban Farm Supply',
// //       'price': 99,
// //       'rating': 4.6,
// //       'reviews': 89,
// //       'category': 'Seeds',
// //       'image':
// //           'https://imgs.search.brave.com/AFVpItvTEh1tPP16XXL4eB8EppB81J7HpVu8zlai1Gk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdG9yZS5hbG1hbmFjLmNvbS9jZG4vc2hvcC9maWxlcy84NDExNjczODJkYmM4NGQzMjllMzY1MzJmYjI4ODFkMzRjNDNjMTAyMzU5Y2IxMDZhNjg4MjI2NzQ0ZWRiNzJiX180MTcyNC4xNzI5ODAwNDEwLjEyODAuMTI4MC5qcGc_dj0xNzQ3ODYyMDQ0JndpZHRoPTE1MDA',
// //       'available': true,
// //     },
// //     {
// //       'name': 'Garden Tool Set',
// //       'brand': 'GardenPro',
// //       'price': 399,
// //       'rating': 4.7,
// //       'reviews': 67,
// //       'category': 'Tools',
// //       'image':
// //           'https://imgs.search.brave.com/Dvl2AyS0cf7sNylySmakbR596Ki9f6CHE_GqflfI950/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cucmFzbmV0d29yay5vcmcvd3AtY29udGVudC91cGxvYWRzLzIwMjMvMTAvQmVzdC1HYXJkZW5pbmctVG9vbHMtTmFtZXMtd2l0aC1QaWN0dXJlcy1hbmQtVGhlaXItVXNlcy53ZWJw',
// //       'available': true,
// //     },
// //     {
// //       'name': 'Organic Fertilizer',
// //       'brand': 'EcoGrow',
// //       'price': 699,
// //       'rating': 4.5,
// //       'reviews': 156,
// //       'category': 'Fertilizer',
// //       'image':
// //           'https://imgs.search.brave.com/AmLHGeoNY-TRKMWKWRWp--qLaQSatEwmziJfRC9NJeA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRpYS5pc3RvY2twaG90by5jb20vaWQvMjE1NzUwOTc5NC9waG90by9mYXJtZXItaGFuZHMtaG9sZGluZy1hbi1vcmdhbmljLW1peGVkLXJpY2UtaHVzay1iZWZvcmUtdXNlLWFzLXBsYW50LWZlcnRpbGl6ZXIud2VicD9hPTEmYj0xJnM9NjEyeDYxMiZ3PTAmaz0yMCZjPVlCV1pjSXRTbjlnb1ZJdXM1V1cwdUZQenB0U0xCNVRmOUtyWEViRWk3YXM9',
// //       'available': true,
// //     },
// //   ];

// //   List<String> categories = ['All', 'Seeds', 'Tools', 'Fertilizer'];

// //   Map<String, int> cart = {};

// //   int get cartCount => cart.values.fold(0, (sum, q) => sum + q);
// //   double get cartTotal {
// //     double total = 0;
// //     cart.forEach((name, qty) {
// //       final product = products.firstWhere((p) => p['name'] == name);
// //       total += product['price'] * qty;
// //     });
// //     return total;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     List<Map<String, dynamic>> filteredProducts = products.where((product) {
// //       final matchesCategory =
// //           selectedCategory == 'All' || product['category'] == selectedCategory;
// //       final matchesSearch =
// //           product['name'].toLowerCase().contains(searchQuery.toLowerCase());
// //       return matchesCategory && matchesSearch;
// //     }).toList();

// //     return Scaffold(
// //       backgroundColor: const Color.fromRGBO(245, 247, 250, 1),
// //       body: SafeArea(
// //         child: Container(
// //           decoration: const BoxDecoration(
// //             gradient: LinearGradient(
// //               colors: [
// //                 Color.fromRGBO(46, 137, 35, 1),
// //                 Color.fromRGBO(245, 247, 250, 1),
// //               ],
// //               begin: Alignment.topCenter,
// //               end: Alignment.bottomCenter,
// //             ),
// //           ),
// //           child: Stack(
// //             children: [
// //               Column(
// //                 children: [
// //                   // App Bar
// //                   Padding(
// //                     padding:
// //                         const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
// //                     child: Row(
// //                       children: [
// //                         IconButton(
// //                           icon: const Icon(Icons.arrow_back_ios_new_rounded,
// //                               color: Colors.white),
// //                           onPressed: () {},
// //                         ),
// //                         Expanded(
// //                           child: Text(
// //                             'Marketplace',
// //                             style: GoogleFonts.poppins(
// //                               color: Colors.white,
// //                               fontSize: 20,
// //                               fontWeight: FontWeight.w600,
// //                             ),
// //                           ),
// //                         ),
// //                         Stack(
// //                           children: [
// //                             IconButton(
// //                               icon: const Icon(Icons.shopping_cart_outlined,
// //                                   color: Colors.white),
// //                               onPressed: () {
// //                                 Navigator.push(
// //                                   context,
// //                                   MaterialPageRoute(
// //                                     builder: (context) =>
// //                                         CartPage(cart: cart, products: products),
// //                                   ),
// //                                 );
// //                               },
// //                             ),
// //                             if (cartCount > 0)
// //                               Positioned(
// //                                 right: 8,
// //                                 top: 8,
// //                                 child: Container(
// //                                   height: 18,
// //                                   width: 18,
// //                                   decoration: const BoxDecoration(
// //                                     color: Colors.red,
// //                                     shape: BoxShape.circle,
// //                                   ),
// //                                   child: Center(
// //                                     child: Text(
// //                                       '$cartCount',
// //                                       style: const TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 11,
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ),

// //                   // Search Bar
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 20),
// //                     child: TextField(
// //                       onChanged: (value) {
// //                         setState(() => searchQuery = value);
// //                       },
// //                       decoration: InputDecoration(
// //                         hintText: 'Search products...',
// //                         prefixIcon: const Icon(Icons.search),
// //                         filled: true,
// //                         fillColor: Colors.white,
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(30),
// //                           borderSide: BorderSide.none,
// //                         ),
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 10),

// //                   // Categories
// //                   SizedBox(
// //                     height: 40,
// //                     child: ListView.builder(
// //                       scrollDirection: Axis.horizontal,
// //                       padding: const EdgeInsets.symmetric(horizontal: 16),
// //                       itemCount: categories.length,
// //                       itemBuilder: (context, index) {
// //                         String category = categories[index];
// //                         bool isSelected = selectedCategory == category;
// //                         return GestureDetector(
// //                           onTap: () {
// //                             setState(() => selectedCategory = category);
// //                           },
// //                           child: Container(
// //                             margin: const EdgeInsets.only(right: 10),
// //                             padding: const EdgeInsets.symmetric(
// //                                 horizontal: 18, vertical: 10),
// //                             decoration: BoxDecoration(
// //                               color: isSelected
// //                                   ? const Color.fromRGBO(120, 188, 97, 1)
// //                                   : Colors.white,
// //                               borderRadius: BorderRadius.circular(25),
// //                             ),
// //                             child: Text(
// //                               category,
// //                               style: GoogleFonts.poppins(
// //                                 color: isSelected
// //                                     ? Colors.white
// //                                     : Colors.grey.shade700,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   ),

// //                   // Product Grid
// //                   Expanded(
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(16),
// //                       child: GridView.builder(
// //                         itemCount: filteredProducts.length,
// //                         gridDelegate:
// //                             const SliverGridDelegateWithFixedCrossAxisCount(
// //                           crossAxisCount: 2,
// //                           mainAxisSpacing: 12,
// //                           crossAxisSpacing: 12,
// //                           childAspectRatio: 0.70,
// //                         ),
// //                         itemBuilder: (context, index) {
// //                           final product = filteredProducts[index];
// //                           final name = product['name'];
// //                           final qty = cart[name] ?? 0;

// //                           return Container(
// //                             decoration: BoxDecoration(
// //                               color: Colors.white,
// //                               borderRadius: BorderRadius.circular(16),
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black.withOpacity(0.1),
// //                                   blurRadius: 5,
// //                                 ),
// //                               ],
// //                             ),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 ClipRRect(
// //                                   borderRadius: const BorderRadius.vertical(
// //                                       top: Radius.circular(16)),
// //                                   child: Image.network(
// //                                     product['image'],
// //                                     height: 120,
// //                                     width: double.infinity,
// //                                     fit: BoxFit.cover,
// //                                   ),
// //                                 ),
// //                                 Padding(
// //                                   padding: const EdgeInsets.all(8),
// //                                   child: Column(
// //                                     crossAxisAlignment:
// //                                         CrossAxisAlignment.start,
// //                                     children: [
// //                                       Text(
// //                                         product['name'],
// //                                         style: GoogleFonts.poppins(
// //                                             fontWeight: FontWeight.w600,
// //                                             fontSize: 13),
// //                                       ),
// //                                       const SizedBox(height: 4),
// //                                       Text(
// //                                         '₹${product['price']}',
// //                                         style: GoogleFonts.poppins(
// //                                             fontWeight: FontWeight.bold),
// //                                       ),
// //                                       Align(
// //                                         alignment: Alignment.bottomRight,
// //                                         child: IconButton(
// //                                           icon: const Icon(Icons.add_circle,
// //                                               color: Colors.green),
// //                                           onPressed: () {
// //                                             setState(() {
// //                                               cart[name] =
// //                                                   (cart[name] ?? 0) + 1;
// //                                             });
// //                                           },
// //                                         ),
// //                                       )
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           );
// //                         },
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               // ✅ Bottom Cart Summary
// //               if (cartCount > 0)
// //                 Positioned(
// //                   left: 16,
// //                   right: 16,
// //                   bottom: 20,
// //                   child: Container(
// //                     padding:
// //                         const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
// //                     decoration: BoxDecoration(
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.circular(16),
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.black.withOpacity(0.1),
// //                           blurRadius: 5,
// //                         ),
// //                       ],
// //                     ),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text(
// //                           '₹${cartTotal.toStringAsFixed(2)}  (${cartCount} items)',
// //                           style: GoogleFonts.poppins(
// //                               fontWeight: FontWeight.w600, fontSize: 14),
// //                         ),
// //                         ElevatedButton(
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor:
// //                                 const Color.fromRGBO(120, 188, 97, 1),
// //                             shape: RoundedRectangleBorder(
// //                                 borderRadius: BorderRadius.circular(12)),
// //                           ),
// //                           onPressed: () {
// //                             Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                 builder: (context) =>
// //                                     CartPage(cart: cart, products: products),
// //                               ),
// //                             );
// //                           },
// //                           child: const Text('Proceed to Checkout'),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // /// ✅ CART PAGE
// // // class CartPage extends StatelessWidget {
// // //   final Map<String, int> cart;
// // //   final List<Map<String, dynamic>> products;

// // //   const CartPage({super.key, required this.cart, required this.products});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     double total = 0;
// // //     cart.forEach((name, qty) {
// // //       final product = products.firstWhere((p) => p['name'] == name);
// // //       total += product['price'] * qty;
// // //     });

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Your Cart'),
// // //         backgroundColor: const Color.fromRGBO(120, 188, 97, 1),
// // //       ),
// // //       body: cart.isEmpty
// // //           ? const Center(child: Text('Your cart is empty'))
// // //           : ListView(
// // //               padding: const EdgeInsets.all(16),
// // //               children: [
// // //                 ...cart.entries.map((entry) {
// // //                   final product =
// // //                       products.firstWhere((p) => p['name'] == entry.key);
// // //                   return Card(
// // //                     child: ListTile(
// // //                       leading: Image.network(product['image'], width: 50),
// // //                       title: Text(product['name']),
// // //                       subtitle: Text('₹${product['price']} x ${entry.value}'),
// // //                       trailing: Text(
// // //                           '₹${(product['price'] * entry.value).toStringAsFixed(2)}'),
// // //                     ),
// // //                   );
// // //                 }),
// // //                 const Divider(),
// // //                 Padding(
// // //                   padding: const EdgeInsets.all(8.0),
// // //                   child: Text(
// // //                     'Total: ₹${total.toStringAsFixed(2)}',
// // //                     style: GoogleFonts.poppins(
// // //                         fontWeight: FontWeight.bold, fontSize: 18),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //     );
// // //   }
// // // }






// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:urban_farming_app/cart_screen.dart';
// import 'package:urban_farming_app/demo.dart';

// class MarketplaceScreen extends StatefulWidget {
//   const MarketplaceScreen({super.key});

//   @override
//   State<MarketplaceScreen> createState() => _MarketplaceScreenState();
// }

// class _MarketplaceScreenState extends State<MarketplaceScreen> {
//   String selectedCategory = 'All';
//   String searchQuery = '';
//   double cartOffset = 20;

//   // List of products
//   final List<Map<String, dynamic>> products = [
//     {
//       'name': 'Organic Tomato Seeds',
//       'brand': 'GreenThumb Gardens',
//       'price': 19,
//       'oldPrice': 15.99,
//       'rating': 4.8,
//       'reviews': 124,
//       'category': 'Seeds',
//       'image': 'https://imgs.search.brave.com/YRa-Wy4lcnNQCqcu9dHk1xO1ppkG0Q_wcLO0_tD3jZg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dXJiYW5wbGFudC5p/bi9jZG4vc2hvcC9m/aWxlcy9Ub21hdG9j/b3B5LndlYnA_dj0x/Njg2NTc4NjM0Jndp/ZHRoPTEyMDA',
//       'available': true,
//     },
//     {
//       'name': 'Herb Growing Kit',
//       'brand': 'Urban Farm Supply',
//       'price': 99,
//       'rating': 4.6,
//       'reviews': 89,
//       'category': 'Seeds',
//       'image': 'https://imgs.search.brave.com/AFVpItvTEh1tPP16XXL4eB8EppB81J7HpVu8zlai1Gk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdG9y/ZS5hbG1hbmFjLmNv/bS9jZG4vc2hvcC9m/aWxlcy84NDExNjcz/ODJkYmM4NGQzMjll/MzY1MzJmYjI4ODFk/MzRjNDNjMTAyMzU5/Y2IxMDZhNjg4MjI2/NzQ0ZWRiNzJiX180/MTcyNC4xNzI5ODAw/NDEwLjEyODAuMTI4/MC5qcGc_dj0xNzQ3/ODYyMDQ0JndpZHRo/PTE1MDA',
//       'available': true,
//     },
//     {
//       'name': 'Garden Tool Set',
//       'brand': 'GardenPro',
//       'price': 399,
//       'rating': 4.7,
//       'reviews': 67,
//       'category': 'Tools',
//       'image': 'https://imgs.search.brave.com/Dvl2AyS0cf7sNylySmakbR596Ki9f6CHE_GqflfI950/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cmFzbmV0d29yay5v/cmcvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjMvMTAvQmVzdC1H/YXJkZW5pbmctVG9v/bHMtTmFtZXMtd2l0/aC1QaWN0dXJlcy1h/bmQtVGhlaXItVXNl/cy53ZWJw',
//       'available': true,
//     },
//     {
//       'name': 'Organic Fertilizer',
//       'brand': 'EcoGrow',
//       'price': 699,
//       'rating': 4.5,
//       'reviews': 156,
//       'category': 'Fertilizer',
//       'image': 'https://imgs.search.brave.com/AmLHGeoNY-TRKMWKWRWp--qLaQSatEwmziJfRC9NJeA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMjE1/NzUwOTc5NC9waG90/by9mYXJtZXItaGFu/ZHMtaG9sZGluZy1h/bi1vcmdhbmljLW1p/eGVkLXJpY2UtaHVz/ay1iZWZvcmUtdXNl/LWFzLXBsYW50LWZl/cnRpbGl6ZXIud2Vi/cD9hPTEmYj0xJnM9/NjEyeDYxMiZ3PTAm/az0yMCZjPVlCV1pj/SXRTbjlnb1ZJdXM1/V1cwdUZQenB0U0xC/NVRmOUtyWEViRWk3/YXM9',
//       'available': true,
//     },
//     {
//       'name': 'Self-Watering Planter',
//       'brand': 'SmartGarden',
//       'price': 499,
//       'rating': 4.9,
//       'reviews': 203,
//       'category': 'Pots',
//       'image': 'https://imgs.search.brave.com/XvrRIWc7cUXNTjYXEE37_1TOsRnl59b4c0XmlwR-vwU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMwLmJhY2t5YXJk/Ym9zc2ltYWdlcy5j/b20vd29yZHByZXNz/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDI0/LzEyL3NlbGYtd2F0/ZXJpbmctd2ljay1z/eXN0ZW0tZm9yLXBv/dHRlZC1wbGFudHMu/anBnP3E9NzAmZml0/PWNyb3Amdz04MjUm/ZHByPTE',
//       'available': false,
//     },
//     {
//       'name': 'Lettuce Seed Variety Pack',
//       'brand': 'GreenThumb Gardens',
//       'price': 39,
//       'rating': 4.4,
//       'reviews': 78,
//       'category': 'Seeds',
//       'image': 'https://imgs.search.brave.com/p5EpgvFeR_KtsX0IBL_EVAvVWQ1tmca78Hj0qpBndS8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/OTFNbmhlMFdSSkwu/anBn',
//       'available': true,
//     },
//   ];

//   List<String> categories = ['All', 'Seeds', 'Tools', 'Fertilizer', 'Pots'];

//   // Cart data
//   Map<String, int> cart = {}; // {productName: quantity}

//   // --- Helper: Calculate total items and price
//   int get cartCount => cart.values.fold(0, (sum, q) => sum + q);
//   double get cartTotal {
//     double total = 0;
//     cart.forEach((name, qty) {
//       final product = products.firstWhere((p) => p['name'] == name);
//       total += product['price'] * qty;
//     });
//     return total;
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> filteredProducts = products.where((product) {
//       final matchesCategory = selectedCategory == 'All' ||
//           product['category'] == selectedCategory;
//       final matchesSearch = product['name']
//           .toLowerCase()
//           .contains(searchQuery.toLowerCase());
//       return matchesCategory && matchesSearch;
//     }).toList();

//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(245, 247, 250, 1),
//       body: SafeArea(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromRGBO(46, 137, 35, 1),
//                 Color.fromRGBO(245, 247, 250, 1),
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: Stack(
//             children: [
//               // Main screen
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Top bar
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                     child: Row(
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.arrow_back_ios_new_rounded,
//                               color: Colors.white),
//                           onPressed: () {},
//                         ),
//                         Expanded(
//                           child: Text(
//                             'Marketplace',
//                             style: GoogleFonts.poppins(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                         Stack(
//                           children: [
//                             IconButton(
//                               icon: const Icon(Icons.shopping_cart_outlined,
//                                   color: Colors.white),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context, 
//                                   MaterialPageRoute(
//                                     builder: (context) => CartPage(cart: cart, products: products) 
//                                   ),
//                                 );
//                               },
//                             ),
//                             if (cartCount > 0)
//                               Positioned(
//                                 right: 8,
//                                 top: 8,
//                                 child: Container(
//                                   height: 18,
//                                   width: 18,
//                                   decoration: const BoxDecoration(
//                                     color: Color.fromRGBO(255, 59, 48, 1),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       '$cartCount',
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 11,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
          
//                   // Subtitle
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Text(
//                       'Seeds, tools & supplies',
//                       style: GoogleFonts.poppins(
//                         color: Colors.white.withOpacity(0.9),
//                         fontSize: 14,
//                       ),
//                     ),
//                   ),
          
//                   const SizedBox(height: 10),
          
//                   // Search bar
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: TextField(
//                       onChanged: (value) {
//                         setState(() => searchQuery = value);
//                       },
//                       decoration: InputDecoration(
//                         hintText: 'Search products...',
//                         hintStyle: GoogleFonts.poppins(
//                           color: Colors.grey.shade600,
//                           fontSize: 14,
//                         ),
//                         prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                         filled: true,
//                         fillColor: Colors.white,
//                         contentPadding: const EdgeInsets.symmetric(
//                             vertical: 0, horizontal: 16),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                   ),
          
//                   const SizedBox(height: 10),
          
//                   // Category slider
//                   SizedBox(
//                     height: 40,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       itemCount: categories.length,
//                       itemBuilder: (context, index) {
//                         String category = categories[index];
//                         bool isSelected = selectedCategory == category;
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() => selectedCategory = category);
//                           },
//                           child: Container(
//                             margin: const EdgeInsets.only(right: 12),
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 18, vertical: 10),
//                             decoration: BoxDecoration(
//                               color: isSelected
//                                   ? const Color.fromRGBO(120, 188, 97, 1)
//                                   : Colors.white,
//                               borderRadius: BorderRadius.circular(25),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.1),
//                                   blurRadius: 4,
//                                 ),
//                               ],
//                             ),
//                             child: Text(
//                               category,
//                               style: GoogleFonts.poppins(
//                                 color: isSelected
//                                     ? Colors.white
//                                     : Colors.grey.shade700,
//                                 fontWeight: isSelected
//                                     ? FontWeight.w600
//                                     : FontWeight.w400,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
          
//                   const SizedBox(height: 10),
          
//                   // Product grid
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       child: GridView.builder(
//                         itemCount: filteredProducts.length,
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           mainAxisSpacing: 12,
//                           crossAxisSpacing: 12,
//                           childAspectRatio: 0.70,
//                         ),
//                         itemBuilder: (context, index) {
//                           final product = filteredProducts[index];
//                           final productName = product['name'];
//                           final quantity = cart[productName] ?? 0;
          
//                           return Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(16),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.08),
//                                   blurRadius: 5,
//                                   offset: const Offset(2, 2),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius: const BorderRadius.vertical(
//                                       top: Radius.circular(16)),
//                                   child: Image.network(
//                                     product['image'],
//                                     height: 120,
//                                     width: double.infinity,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 8, vertical: 6),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         product['name'],
//                                         style: GoogleFonts.poppins(
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                         maxLines: 2,
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                       const SizedBox(height: 2),
//                                       Text(
//                                         product['brand'],
//                                         style: GoogleFonts.poppins(
//                                           color: Colors.grey,
//                                           fontSize: 11,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 4),
//                                       Row(
//                                         children: [
//                                           const Icon(Icons.star,
//                                               color:
//                                                   Color.fromRGBO(255, 193, 7, 1),
//                                               size: 14),
//                                           const SizedBox(width: 4),
//                                           Text(
//                                             '${product['rating']}',
//                                             style: GoogleFonts.poppins(
//                                               fontSize: 11,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                           Text(
//                                             ' (${product['reviews']})',
//                                             style: GoogleFonts.poppins(
//                                               fontSize: 10,
//                                               color: Colors.grey,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       const SizedBox(height: 4),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             '₹${product['price']}',
//                                             style: GoogleFonts.poppins(
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                           InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 cart[productName] =
//                                                     (cart[productName] ?? 0) + 1;
//                                               });
//                                             },
//                                             child: Container(
//                                               padding: const EdgeInsets.all(5),
//                                               decoration: const BoxDecoration(
//                                                 color: Color.fromRGBO(
//                                                     120, 188, 97, 1),
//                                                 shape: BoxShape.circle,
//                                               ),
//                                               child: const Icon(Icons.add,
//                                                   color: Colors.white, size: 18),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
          
//               // Bottom Cart Summary
//               if (cartCount > 0)
//                 Positioned(
//                   left: 16,
//                   right: 16,
//                   bottom: cartOffset, // use variable offset
//                   child: GestureDetector(
//                     onVerticalDragUpdate: (details) {
//                       setState(() {
//                         // Move the cart card up/down but keep it within limits
//                         cartOffset -= details.delta.dy;
//                         if (cartOffset < 0) cartOffset = 0;
//                         if (cartOffset > 400) cartOffset = 400;
//                       });
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 150),
//                       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(16),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 6,
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Cart ($cartCount items)',
//                             style: GoogleFonts.poppins(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 14,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           ...cart.entries.map((entry) {
//                             final product = products.firstWhere((p) => p['name'] == entry.key);
//                             return Text(
//                               '${entry.key}  x${entry.value}  = ₹${(product['price'] * entry.value).toStringAsFixed(2)}',
//                               style: GoogleFonts.poppins(fontSize: 12),
//                             );
//                           }),
//                           const SizedBox(height: 8),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 '₹${cartTotal.toStringAsFixed(2)}',
//                                 style: GoogleFonts.poppins(
//                                   color: const Color.fromRGBO(120, 188, 97, 1),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color.fromRGBO(120, 188, 97, 1),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                 ),
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context, 
//                                     MaterialPageRoute(
//                                       builder: (context) => CartPage(cart: cart, products: products)
//                                     ),
//                                     );
//                                 },
//                                 child: Text(
//                                   'Proceed to Checkout',
//                                   style: GoogleFonts.poppins(color: Colors.white),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
