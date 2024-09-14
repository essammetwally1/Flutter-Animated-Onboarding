import 'package:flutter/material.dart';
import 'home_page.dart'; // Import your HomePage widget
import 'FadeAnimation.dart'; // Import the FadeAnimation if used globally

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      theme: ThemeData(
        fontFamily: 'Nunito', // Use Nunito font (ensure it's set in pubspec.yaml)
      ),
      home: HomePage(), // Set the HomePage as the default screen
    );
  }
}