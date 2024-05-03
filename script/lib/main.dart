import 'package:flutter/material.dart';
import 'package:script/screens/appbar.dart';
// import 'package:script/screens/bottom_navigation.dart';
// import 'package:script/screens/demo_screen.dart';
// import 'package:script/screens/expansion_panel.dart';
// import 'package:script/screens/first_screen.dart';
// import 'package:script/screens/question_screen.dart';
// import 'package:script/screens/result_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Appbar(),
    );
  }
}
