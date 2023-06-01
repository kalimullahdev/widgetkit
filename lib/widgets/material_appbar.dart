import 'package:flutter/material.dart';

class MaterialAppbar extends StatelessWidget {
  const MaterialAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Material Appbar"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
