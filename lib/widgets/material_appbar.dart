import 'package:flutter/material.dart';

class MaterialAppbar extends StatelessWidget {
  const MaterialAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text("Appbar"),
    );
  }
}
