import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/widget_keys.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/widget_viewer.dart';
import 'package:widgetkit/widgets/material_outlined_button.dart';

class MaterialOutlinedButtonInfo extends StatelessWidget {
  const MaterialOutlinedButtonInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WidgetViewer(
      title: 'Outlined Button',
      widgetFileName: 'material_outlined_button.dart',
      widget: MaterialOutlinedButton(),
      widgetKey: WidgetKeys.materialOutlinedButton,
    );
  }
}
