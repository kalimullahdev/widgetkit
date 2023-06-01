import 'package:widgetkit/app/domain/data_classes/widget_types_page_data.dart';
import 'package:widgetkit/app/presentation/data/widget_keywords.dart';
import 'package:widgetkit/app/presentation/pages/widget_viewer_list.dart';

const materialWidgetTypesPageData = WidgetTypesPageData(
  appbarTitle: "Material Widgets",
  widgetTypeDataList: [
    WidgetTypeData(
      title: "View all",
      page: WidgetViewerListPage(
        customAppbarTitle: 'All Material Widgets',
        keywords: [WidgetKeywords.material],
      ),
    ),
    WidgetTypeData(
      title: "Appbars",
      page: WidgetViewerListPage(
        keywords: [WidgetKeywords.material, WidgetKeywords.appbar],
      ),
    ),
    WidgetTypeData(
      title: "Buttons",
      page: WidgetViewerListPage(
        keywords: [WidgetKeywords.material, WidgetKeywords.button],
      ),
    ),
  ],
);

const cupertinoWidgetTypesPageData = WidgetTypesPageData(
  appbarTitle: "Cupertino Widgets",
  widgetTypeDataList: [],
);
