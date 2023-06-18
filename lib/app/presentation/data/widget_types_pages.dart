import 'package:widgetkit/app/domain/data_classes/widget_types_page.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/pages/widget_viewer_list.dart';

class WidgetTypesPagesData {
  static const material = WidgetTypesPageDataClass(
    appbarTitle: "Material Widgets",
    widgetTypeDataList: [
      WidgetTypeData(
        title: "View all",
        page: WidgetViewerListPage(
          customAppbarTitle: 'All Material Widgets',
          keywords: [WidgetKeys.material], //TODO:Make it only one key
        ),
      ),
      WidgetTypeData(
        title: "Appbars",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialAppbar],
        ),
      ),
      WidgetTypeData(
        title: "Buttons",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialButton],
        ),
      ),
      WidgetTypeData(
        title: "Bottom Navigation Bar",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialBottomNavigationBar],
        ),
      ),
      WidgetTypeData(
        title: "Backdrop",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialBackdrop],
        ),
      ),
      WidgetTypeData(
        title: "Banner",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialBanner],
        ),
      ),
      WidgetTypeData(
        title: "Cards",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialCard],
        ),
      ),
      WidgetTypeData(
        title: "Checkboxes",
        page: WidgetViewerListPage(
          keywords: [WidgetKeys.materialCheckbox],
        ),
      ),
    ],
  );

  static const cupertino = WidgetTypesPageDataClass(
    appbarTitle: "Cupertino Widgets",
    widgetTypeDataList: [],
  );
}
