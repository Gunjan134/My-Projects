import 'package:flutter/material.dart';
import 'pages/bottom_nav_demo.dart';

void main() => runApp(WidgetsApp());

class WidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Library',
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: BottomNavDemo(),
    );
  }
}
