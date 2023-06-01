import 'package:flutter/material.dart';

class WidgetViewerData {
  final String title;
  final Widget widget;
  final String widgetFileName;
  final String widgetKey;

  final void Function()? onVariationPressed;
  final void Function()? onPlayPressed;
  final void Function()? onExpandPressed;

  const WidgetViewerData({
    required this.title,
    required this.widgetFileName,
    required this.widget,
    required this.widgetKey,
    this.onVariationPressed,
    this.onPlayPressed,
    this.onExpandPressed,
  });
}
