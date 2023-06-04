import 'package:flutter/material.dart';

class MaterialAppbarAction extends StatelessWidget {
  const MaterialAppbarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Appbar"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
