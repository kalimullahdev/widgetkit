import 'package:flutter/material.dart';

class MaterialOutlinedButton extends StatelessWidget {
  const MaterialOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text("Button"),
    );
  }
}
