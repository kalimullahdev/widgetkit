import 'package:flutter/material.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/widgets/widget_viewer.dart';

class WidgetVariations {
  static final materialElevatedButton = [
    WidgetViewer.material(
      widgetViewerDataClass: const WidgetViewerDataClass(
        title: "titleLarge",
        widgetFileName: "widgetFileName",
        widget: Text("data"),
        widgetKey: WidgetKeys.materialElevatedButtonV1,
      ),
    ),
  ];
}
