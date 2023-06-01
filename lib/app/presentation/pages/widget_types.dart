import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/routing/nav.dart';
import 'package:widgetkit/app/domain/data_classes/widget_types_page_data.dart';
import 'package:widgetkit/app/presentation/widgets/app_list_tile.dart';
import 'package:widgetkit/app/presentation/widgets/theme_changing_icon.dart';

class WidgetTypesPage extends StatelessWidget {
  final WidgetTypesPageData widgetTypesPageData;

  const WidgetTypesPage({
    Key? key,
    required this.widgetTypesPageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetTypesPageData.appbarTitle),
        actions: const [ThemeChangingIcon()],
      ),
      body: ListView.builder(
        itemCount: widgetTypesPageData.widgetTypeDataList.length,
        itemBuilder: (BuildContext context, int index) {
          final widgetTypeData = widgetTypesPageData.widgetTypeDataList[index];

          return AppListTile(
            title: widgetTypeData.title,
            onTap: () {
              Nav.pushWithArguments(
                context,
                page: widgetTypeData.page,
                arguments: widgetTypeData.title,
              );
            },
            showTrailingArrow: widgetTypeData.page is WidgetTypesPage,
          );
        },
      ),
    );
  }
}
