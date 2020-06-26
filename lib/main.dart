import 'package:flutter/material.dart';
import './bottom_bar_navigation_pattern/bottom_bar_navigation_pattern_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Bottom Bar',
      home: BottomBarNavigationPatternExample(),
    );
  }
}
