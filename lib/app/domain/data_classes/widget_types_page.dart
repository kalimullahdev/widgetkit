import 'package:flutter/material.dart';

class WidgetTypesPageDataClass {
  final String appbarTitle;
  final List<WidgetTypeData> widgetTypeDataList;

  const WidgetTypesPageDataClass({
    required this.appbarTitle,
    required this.widgetTypeDataList,
  });
}

class WidgetTypeData {
  final String title;
  final Widget page;

  const WidgetTypeData({
    required this.title,
    required this.page,
  });
}
