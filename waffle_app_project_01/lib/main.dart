import 'package:flutter/material.dart';
// import 'pages/homepage.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      // home: HomePage(),
      home: IntroPage(),
    );
  }
}

