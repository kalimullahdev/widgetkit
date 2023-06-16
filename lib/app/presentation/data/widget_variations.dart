import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/widgets/material_elevated_button_v1.dart';

class WidgetVariations {
  static const materialElevatedButtonV1 = WidgetViewerDataClass(
    title: 'Elevated Button',
    widget: MaterialElevatedButtonV1(),
    widgetKey: WidgetKeys.materialElevatedButtonV1,
    widgetFileName: 'material_elevated_button_v1.dart',
  );
}
