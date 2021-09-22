import 'package:flutter/material.dart';
import './screens/get_started_screen.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      home: GetStartedScreen(),
    );
  }
}
