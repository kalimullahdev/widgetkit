import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class MaterialBackdrop extends StatelessWidget {
  const MaterialBackdrop({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Backdrop"),
        actions: const [
          BackdropToggleButton(icon: AnimatedIcons.list_view),
        ],
      ),
      backLayer: const Center(
        child: Text("Back Layer"),
      ),
      frontLayer: const Center(
        child: Text("Front Layer"),
      ),
    );
  }
}
