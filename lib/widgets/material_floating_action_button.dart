import 'package:flutter/material.dart';

class MaterialFloatingActionButton extends StatelessWidget {
  const MaterialFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
