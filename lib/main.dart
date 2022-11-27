import 'package:figma_to_flutter/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff29274F),
        scaffoldBackgroundColor:const Color(0xff29274F),
      ),
      home:HomeScreen(),
    );
  }
}
