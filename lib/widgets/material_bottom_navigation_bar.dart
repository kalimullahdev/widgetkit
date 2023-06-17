import 'package:flutter/material.dart';

class MaterialBottomNavigationBar extends StatefulWidget {
  const MaterialBottomNavigationBar({super.key});

  @override
  State<MaterialBottomNavigationBar> createState() => _MaterialBottomNavigationBarState();
}

class _MaterialBottomNavigationBarState extends State<MaterialBottomNavigationBar> {
  int _activeIndex = 0;
  static const TextStyle _optionStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w600);
  static const List _widgetOptions = [
    Text(
      'Home',
      style: _optionStyle,
    ),
    Text(
      'Favorite',
      style: _optionStyle,
    ),
    Text(
      'Settings',
      style: _optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_activeIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _activeIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
