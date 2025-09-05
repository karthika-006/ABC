// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart'; // Import your new screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto', // Or any other font you prefer
      ),
      home: const DashboardScreen(), // Set the dashboard as the home screen
      debugShowCheckedModeBanner: false,
    );
  }
}