import 'package:flutter/material.dart';
import 'package:list_view/PlayerAppTextField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Player App",
      home: PlayerAppTextField(),
    );
  }
}
