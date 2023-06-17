import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownButton].

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: Center(
          child: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              // ...
            },
          ),
        ),
      ),
    );
  }
}
