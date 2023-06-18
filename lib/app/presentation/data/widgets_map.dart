import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/data/widget_viewer.dart';
import 'package:widgetkit/app/presentation/widgets/widget_viewer.dart';

final Map<String, Widget> widgetsMap = {
  WidgetKeys.materialAppbar: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbar),
  WidgetKeys.materialAppbarBasic: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarBasic),
  WidgetKeys.materialAppbarAction: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarAction),
  WidgetKeys.materialAppbarSearch: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarSearch),
  WidgetKeys.materialAppbarFull: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialAppbarFull),

  WidgetKeys.materialBottomAppbar: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialBottomAppbar),

  WidgetKeys.materialBackdrop: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialBackdrop),

  WidgetKeys.materialBanner: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialBanner),
  WidgetKeys.materialBannerBasic: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialBannerBasic),
  WidgetKeys.materialBannerDismissible: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialBannerDismissible),

  // TODO:no todo
  WidgetKeys.materialElevatedButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialElevatedButton),
  WidgetKeys.materialOutlinedButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialOutlinedButton),
  WidgetKeys.materialTextButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialTextButton),
  WidgetKeys.materialFloatingActionButtons: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialFloatingActionButtons),
  WidgetKeys.materialFloatingActionButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialFloatingActionButton),
  WidgetKeys.materialMiniFloatingActionButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialMiniFloatingActionButton),
  WidgetKeys.materialExtendedFloatingActionButton:
      WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialExtendedFloatingActionButton),

  WidgetKeys.materialToggleButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialToggleButton),
  WidgetKeys.materialToggleTextButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialToggleTextButton),
  WidgetKeys.materialToggleIconButton: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialToggleIconButton),

  WidgetKeys.materialCards: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialCards),
  WidgetKeys.materialCard: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialCard),
  WidgetKeys.materialHeaderCard: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialHeaderCard),
  WidgetKeys.materialDividerCard: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialDividerCard),

  WidgetKeys.materialBottomNavigationBar: WidgetViewer.material(widgetViewerDataClass: WidgetViewerData.materialBottomNavigationBar),
};
