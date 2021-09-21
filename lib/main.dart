import 'package:flutter/material.dart';
import './screens/get_started_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Started Task',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.yellow,
      ),
      home: GetStartedScreen(),
    );
  }
}
