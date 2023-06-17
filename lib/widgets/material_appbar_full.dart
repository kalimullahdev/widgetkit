import 'package:flutter/material.dart';

class MaterialAppbarFull extends StatelessWidget {
  const MaterialAppbarFull({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      title: const Text('Appbar'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
