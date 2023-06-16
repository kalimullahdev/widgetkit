import 'package:flutter/material.dart';

class MaterialAppbarAction extends StatelessWidget {
  const MaterialAppbarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.of(context).pop();
      //   },
      //   icon: const Icon(Icons.arrow_back),
      // ),
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
