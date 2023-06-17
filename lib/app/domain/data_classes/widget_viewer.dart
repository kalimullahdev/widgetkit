import 'package:flutter/material.dart';

class WidgetViewerDataClass {
  final String title;
  final Widget widget;
  final String widgetFileName;
  final String widgetKey;
  final String? widgetName;
  final Widget? expandWidgetPage;
  final Widget? playWidgetPage; //TODO: Rename it to interactiveWidgetPage
  final String? assetPath;

  const WidgetViewerDataClass({
    required this.title,
    required this.widgetFileName,
    required this.widget,
    required this.widgetKey,
    this.widgetName,
    this.expandWidgetPage,
    this.playWidgetPage,
    this.assetPath,
  });
}
