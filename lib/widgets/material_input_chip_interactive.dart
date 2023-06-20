import 'package:flutter/material.dart';

class MaterialInputChipInteractive extends StatefulWidget {
  const MaterialInputChipInteractive({super.key});

  @override
  State<MaterialInputChipInteractive> createState() => _MaterialInputChipInteractiveState();
}

class _MaterialInputChipInteractiveState extends State<MaterialInputChipInteractive> {
  List<ChipModel> chips = defaultChips.toList();

  ChipModel? selectedChip;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: chips.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: InputChip(
                  avatar: chips[index].avatar,
                  label: Text(chips[index].label),
                  selected: selectedChip != null ? chips.indexOf(selectedChip!) == index : false,
                  onSelected: (bool value) {
                    setState(() {
                      if (selectedChip == chips[index]) {
                        selectedChip = null;
                      } else {
                        selectedChip = chips[index];
                      }
                    });
                  },
                  onDeleted: () {
                    setState(() {});
                    setState(() {
                      chips.removeAt(index);
                    });
                  },
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            setState(() {
              chips = [];
              chips.addAll(defaultChips);
              selectedChip = null;
            });
          },
          child: const Text('Reset'),
        )
      ],
    );
  }
}

final defaultChips = <ChipModel>[
  ChipModel(
    "Android",
    Icons.android,
    avatar:
        Image.network("https://cdn0.iconfinder.com/data/icons/file-management-system-flat/32/file_managemenr_system_icon_set_flat_style-14-512.png"),
  ),
  const ChipModel(
    "Apple",
    Icons.apple,
  ),
  const ChipModel(
    "Windows",
    Icons.window,
    avatar: Icon(Icons.window),
  ),
  const ChipModel(
    "Website",
    Icons.window,
    avatar: Icon(Icons.web),
  ),
];

class ChipModel {
  final String label;
  final IconData iconData;
  final Widget? avatar;
  final bool isSelected;

  const ChipModel(
    this.label,
    this.iconData, {
    this.avatar,
    this.isSelected = false,
  });

  ChipModel copyWith({
    String? label,
    IconData? iconData,
    Widget? avatar,
  }) {
    return ChipModel(
      label ?? this.label,
      iconData ?? this.iconData,
      avatar: avatar ?? this.avatar,
    );
  }
}
