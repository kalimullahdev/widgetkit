import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/widget_keys.dart';
import 'package:widgetkit/app/presentation/pages/common_widgets/widget_viewer.dart';
import 'package:widgetkit/widgets/material_outlined_button.dart';

class MaterialOutlinedButtonInfo extends StatelessWidget {
  const MaterialOutlinedButtonInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WidgetViewer(
      title: 'Outlined Button',
      usageDescription: 'To use outlined widget',
      widget: MaterialOutlinedButton(),
      widgetKey: WidgetKeys.materialOutlinedButton,
    );
  }
}
