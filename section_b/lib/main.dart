import 'package:flutter/material.dart';
import 'package:section_b/screens/number_three.dart';
// import 'package:section_b/screens/login.dart';
// import 'login.dart';
// import 'number_three.dart'; 


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Mockup(), // Start with the Login page
    );
  }
}
