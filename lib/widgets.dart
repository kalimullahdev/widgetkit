import 'package:flutter/material.dart';

final list = ['One', 'Two', 'Three', 'Four'];

class MaterialDropdownButton extends StatefulWidget {
  const MaterialDropdownButton({super.key});

  @override
  State<MaterialDropdownButton> createState() => _MaterialDropdownButtonState();
}

class _MaterialDropdownButtonState extends State<MaterialDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
