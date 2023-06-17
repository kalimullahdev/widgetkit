import 'package:flutter/material.dart';

class MaterialToggleTextButton extends StatefulWidget {
  const MaterialToggleTextButton({super.key});

  @override
  State<MaterialToggleTextButton> createState() => _MaterialToggleTextButtonState();
}

class _MaterialToggleTextButtonState extends State<MaterialToggleTextButton> {
  final isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderRadius: BorderRadius.circular(4.0),
      constraints: const BoxConstraints(minHeight: 36.0),
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Button 1'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Button 2'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Button 3'),
        ),
      ],
    );
  }
}
