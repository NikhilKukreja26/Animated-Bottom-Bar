import 'package:flutter/material.dart';
import 'animated_bottom_bar.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: 'Home',
      iconData: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
      text: 'Likes',
      iconData: Icons.favorite_border,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: 'Search',
      iconData: Icons.search,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: 'Profile',
      iconData: Icons.person_outline,
      color: Colors.teal,
    ),
  ];
  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 150),
        onBarTap: (index) {
          print(index);
          setState(() {
            selectedBarIndex = index;
          });
        },
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: widget.barItems[selectedBarIndex].color,
        child: Center(
          child: Text(
            widget.barItems[selectedBarIndex].text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
