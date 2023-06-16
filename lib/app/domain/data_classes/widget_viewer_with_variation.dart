import 'package:flutter/material.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';

class WidgetViewerWithVariationDataClass extends WidgetViewerDataClass {
  final Widget variationPage;
  final WidgetViewerDataClass widgetViewerDataClass;
  final String widgetKeyName;

  WidgetViewerWithVariationDataClass({
    required this.variationPage,
    required this.widgetViewerDataClass,
    required this.widgetKeyName,
  }) : super(
          title: widgetViewerDataClass.title,
          widgetFileName: widgetViewerDataClass.widgetFileName,
          widget: widgetViewerDataClass.widget,
          widgetKey: widgetKeyName,
          expandWidgetPage: widgetViewerDataClass.expandWidgetPage,
          playWidgetPage: widgetViewerDataClass.playWidgetPage,
          widgetVariationPage: widgetViewerDataClass.widgetVariationPage,
        );
}
