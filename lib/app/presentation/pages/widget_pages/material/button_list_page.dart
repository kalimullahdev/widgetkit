import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/widget_viewers/material/buttons/elevated_button/elevated_button.dart';
import 'package:widgetkit/app/presentation/widget_viewers/material/buttons/outlined_button/outlined_button.dart';

class ButtonListPage extends StatelessWidget {
  const ButtonListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: ListView(
        children: const [
          MaterialElevatedButtonInfo(),
          MaterialOutlinedButtonInfo(),
        ],
      ),
    );
  }
}
