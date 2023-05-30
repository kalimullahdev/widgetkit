import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/widget_keys.dart';
import 'package:widgetkit/app/presentation/pages/common_widgets/widget_viewer.dart';
import 'package:widgetkit/widgets/material_elevated_button.dart';

class MaterialElevatedButtonInfo extends StatelessWidget {
  const MaterialElevatedButtonInfo({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const WidgetViewer(
      title: 'Elevated Button',
      usageDescription: 'To use Elevated widget',
      widget: MaterialElevatedButton(),
      widgetKey: WidgetKeys.materialElevatedButton,
    );
  }
}
