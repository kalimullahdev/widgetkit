import 'package:flutter/material.dart';

class MaterialCheckbox extends StatefulWidget {
  const MaterialCheckbox({super.key});

  @override
  State<MaterialCheckbox> createState() => _MaterialCheckboxState();
}

class _MaterialCheckboxState extends State<MaterialCheckbox> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: rememberMe,
          onChanged: (value) {
            setState(() {
              rememberMe = value ?? false;
            });
          },
        ),
        const Text("Remember me")
      ],
    );
  }
}
