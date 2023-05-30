import 'package:flutter/material.dart';

class CupertinoWidgetsPage extends StatelessWidget {
  const CupertinoWidgetsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Widgets'),
      ),
      body: const Center(
        child: Text('Cupertino Widget'),
      ),
    );
  }
}
