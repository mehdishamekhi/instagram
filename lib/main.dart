import 'package:flutter/material.dart';
import 'package:instagram/screens/auth_screen.dart';
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/screens/login_page.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SearchScreen(),
      ),
    );
  }
}
