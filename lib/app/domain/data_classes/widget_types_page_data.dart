import 'package:flutter/material.dart';

class WidgetTypesPageData {
  final String appbarTitle;
  final List<WidgetTypeData> widgetTypeDataList;

  const WidgetTypesPageData({
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
