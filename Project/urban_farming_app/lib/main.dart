import 'package:flutter/material.dart';
import 'package:urban_farming_app/Basil_grow_screen.dart';
import 'package:urban_farming_app/Chilli_papper_screen.dart';
import 'package:urban_farming_app/cart_screen.dart';
import 'package:urban_farming_app/cilantro_grow_screen.dart';
import 'package:urban_farming_app/demo.dart';
import 'package:urban_farming_app/grow_guide_screen.dart';
import 'package:urban_farming_app/home_screen.dart';
import 'package:urban_farming_app/lettuce_grow_screen.dart';
import 'package:urban_farming_app/marketplace_screen.dart';
import 'package:urban_farming_app/spinach_grow_screen.dart';
import 'package:urban_farming_app/tomato_grow_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarketplaceScreen()
    );
  }
}
