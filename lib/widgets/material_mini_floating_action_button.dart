import 'package:flutter/material.dart';

class MaterialMiniFloatingActionButton extends StatelessWidget {
  const MaterialMiniFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      mini: true,
      child: const Icon(Icons.add),
    );
  }
}
