import 'package:flutter/material.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer_with_variation.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/data/widget_variations.dart';
import 'package:widgetkit/app/presentation/pages/full_screen_viewer/material2_full_screen_viewer.dart';
import 'package:widgetkit/app/presentation/pages/widget_variations.dart';
import 'package:widgetkit/app/presentation/widgets/widget_viewer.dart';
import 'package:widgetkit/widgets/material_appbar.dart';
import 'package:widgetkit/widgets/material_appbar_action.dart';
import 'package:widgetkit/widgets/material_appbar_search.dart';
import 'package:widgetkit/widgets/material_elevated_button.dart';
import 'package:widgetkit/widgets/material_elevated_button_v1.dart';
import 'package:widgetkit/widgets/material_floating_action_button.dart';
import 'package:widgetkit/widgets/material_outlined_button.dart';
import 'package:widgetkit/widgets/material_text_button.dart';

class WidgetViewerData {
  static final materialAppbarBasic = WidgetViewerDataClass(
    title: 'Basic Appbar',
    widget: const MaterialAppbar(),
    widgetKey: WidgetKeys.materialAppbarBasic,
    widgetFileName: 'material_appbar.dart',
    expandWidgetPage: Material2FullScreenViewerPage(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Appbar"),
      ),
    ),
  );

  static final materialAppbarAction = WidgetViewerDataClass(
    title: 'Appbar with action',
    widget: const MaterialAppbarAction(),
    widgetKey: WidgetKeys.materialAppbarAction,
    widgetFileName: 'material_appbar_action.dart',
    expandWidgetPage: Material2FullScreenViewerPage(
      appBar: AppBar(
        title: const Text("Appbar"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    ),
  );
  static const materialAppbarSearch = WidgetViewerDataClass(
    title: 'Appbar with search',
    widget: MaterialAppbarSearch(),
    widgetKey: WidgetKeys.materialAppbarSearch,
    widgetFileName: 'material_appbar_search.dart',
    expandWidgetPage: Material2FullScreenViewerPage(
      bodyChild: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MaterialAppbarSearch(),
        ],
      ),
    ),
  );

  static final materialAppbar = WidgetViewerWithVariationDataClass(
    widgetTitle: 'Appbar',
    widgetKeyName: WidgetKeys.materialAppbar,
    widgetViewerDataClass: materialAppbarBasic,
    variationPage: WidgetVariationsPage(
      appbarTitle: 'Appbars',
      widgets: [
        WidgetViewer.material(widgetViewerDataClass: materialAppbarBasic),
        WidgetViewer.material(widgetViewerDataClass: materialAppbarAction),
        WidgetViewer.material(widgetViewerDataClass: materialAppbarSearch),
      ],
    ),
  );

  static final materialElevatedButton = WidgetViewerDataClass(
    title: 'Elevated Button',
    widget: const MaterialElevatedButton(),
    widgetKey: WidgetKeys.materialElevatedButton,
    widgetFileName: 'material_elevated_button.dart',
    widgetVariationPage: WidgetVariationsPage(
      appbarTitle: 'Elevated Buttons',
      widgets: [
        WidgetViewer.material(
          widgetViewerDataClass: WidgetVariations.materialElevatedButtonV1,
        )
      ],
    ),
    expandWidgetPage: const Material2FullScreenViewerPage(widget: MaterialElevatedButton()),
  );

  static const materialElevatedButtonV1 = WidgetViewerDataClass(
    title: 'Elevated Button',
    widget: MaterialElevatedButtonV1(),
    widgetKey: WidgetKeys.materialElevatedButtonV1,
    widgetFileName: 'material_elevated_button_v1.dart',
  );

  static const materialOutlinedButton = WidgetViewerDataClass(
    title: 'Outlined Button',
    widget: MaterialOutlinedButton(),
    widgetKey: WidgetKeys.materialOutlinedButton,
    widgetFileName: 'material_outlined_button.dart',
  );

  static const materialTextButton = WidgetViewerDataClass(
    title: 'Text Button',
    widget: MaterialTextButton(),
    widgetKey: WidgetKeys.materialTextButton,
    widgetFileName: 'material_text_button.dart',
  );

  static const materialFloatingActionButton = WidgetViewerDataClass(
    title: 'Floating Action Button',
    widget: MaterialFloatingActionButton(),
    widgetKey: WidgetKeys.materialFloatingActionButton,
    widgetFileName: 'material_floating_action_button.dart',
  );
}
