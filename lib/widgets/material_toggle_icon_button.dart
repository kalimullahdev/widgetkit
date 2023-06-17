import 'package:flutter/material.dart';

class MaterialToggleIconButton extends StatefulWidget {
  const MaterialToggleIconButton({super.key});

  @override
  State<MaterialToggleIconButton> createState() => _MaterialToggleIconButtonState();
}

class _MaterialToggleIconButtonState extends State<MaterialToggleIconButton> {
  final isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderRadius: BorderRadius.circular(4.0),
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      children: const [
        Icon(Icons.favorite),
        Icon(Icons.visibility),
        Icon(Icons.notifications),
      ],
    );
  }
}
