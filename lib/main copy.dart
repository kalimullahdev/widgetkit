import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      // data: ThemeData.dark(),
      child: const SafeArea(
        child: SimpleScreen(),
      ),
    );
  }
}

class SimpleScreen extends StatelessWidget {
  const SimpleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleScreen'),
      ),
      body: const Center(
          // child: ChipM(),
          ),
    );
  }
}
