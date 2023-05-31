import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/theme_changing_icon.dart';

class CupertinoWidgetsPage extends StatelessWidget {
  const CupertinoWidgetsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Widgets'),
        actions: const [ThemeChangingIcon()],
      ),
      body: const Center(
        child: Text('Cupertino Widget'),
      ),
    );
  }
}
