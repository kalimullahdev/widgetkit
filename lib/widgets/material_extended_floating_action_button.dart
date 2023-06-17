import 'package:flutter/material.dart';

class MaterialExtendedFloatingActionButton extends StatelessWidget {
  const MaterialExtendedFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: const Text('Extended'),
      icon: const Icon(Icons.add),
    );
  }
}
