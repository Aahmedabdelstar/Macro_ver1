import 'package:flutter/material.dart';
import 'package:macro/ui/login_screen.dart';
import 'package:macro/ui/main_screen.dart';
import './ui/home_page_new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

