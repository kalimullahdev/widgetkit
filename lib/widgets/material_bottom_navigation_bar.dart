import 'package:flutter/material.dart';

class MaterialBottomNavigationBar extends StatefulWidget {
  const MaterialBottomNavigationBar({super.key});

  @override
  State<MaterialBottomNavigationBar> createState() => _MaterialBottomNavigationBarState();
}

class _MaterialBottomNavigationBarState extends State<MaterialBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle _optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: _optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: _optionStyle,
    ),
    Text(
      'Index 2: School',
      style: _optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
