import 'package:flutter/material.dart';

class MaterialInputChipSimple extends StatelessWidget {
  const MaterialInputChipSimple({super.key});

  @override
  Widget build(BuildContext context) {
    final chips = ["Android", "Website", "IOS", "Windows"];
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InputChip(
              label: Text(chips[index]),
              onSelected: (value) {},
              onDeleted: () {},
            ),
          );
        },
      ),
    );
  }
}
