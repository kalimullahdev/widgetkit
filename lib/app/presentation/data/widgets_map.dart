import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/data/widget_viewer_data_catalogue.dart';
import 'package:widgetkit/app/presentation/widgets/widget_viewer.dart';

final Map<String, Widget> widgetsMap = {
  WidgetKeys.materialAppbar: WidgetViewer.material(widgetViewerData: WidgetViewerDataCatalogue.materialAppbar),
  WidgetKeys.materialElevatedButton: WidgetViewer.material(widgetViewerData: WidgetViewerDataCatalogue.materialElevatedButton),
  WidgetKeys.materialOutlinedButton: WidgetViewer.material(widgetViewerData: WidgetViewerDataCatalogue.materialOutlinedButton),
  WidgetKeys.materialTextButton: WidgetViewer.material(widgetViewerData: WidgetViewerDataCatalogue.materialTextButton),
  WidgetKeys.materialFloatingActionButton: WidgetViewer.material(widgetViewerData: WidgetViewerDataCatalogue.materialFloatingActionButton),
};
