import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/data/widget_variations.dart';
import 'package:widgetkit/app/presentation/data/widget_viewer.dart';
import 'package:widgetkit/app/presentation/widgets/widget_viewer.dart';

final Map<String, Widget> widgetsMap = {
  WidgetKeys.materialAppbar: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbar),
  WidgetKeys.materialAppbarBasic: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarBasic),
  WidgetKeys.materialAppbarAction: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarAction),
  WidgetKeys.materialAppbarSearch: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarSearch),
  WidgetKeys.materialElevatedButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialElevatedButton),
  WidgetKeys.materialElevatedButtonV1: WidgetViewer.material(widgetViewerDataClass: WidgetVariations.materialElevatedButtonV1),
  WidgetKeys.materialOutlinedButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialOutlinedButton),
  WidgetKeys.materialTextButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialTextButton),
  WidgetKeys.materialFloatingActionButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialFloatingActionButton),
};
