import 'package:flutter/material.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer_with_variation.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/pages/full_screen_viewer/material2_full_screen_viewer.dart';
import 'package:widgetkit/app/presentation/pages/widget_variations.dart';
import 'package:widgetkit/app/presentation/widgets/material2_wrapper.dart';
import 'package:widgetkit/app/presentation/widgets/widget_viewer.dart';
import 'package:widgetkit/widgets/material_appbar.dart';
import 'package:widgetkit/widgets/material_appbar_action.dart';
import 'package:widgetkit/widgets/material_appbar_full.dart';
import 'package:widgetkit/widgets/material_appbar_search.dart';
import 'package:widgetkit/widgets/material_backdrop.dart';
import 'package:widgetkit/widgets/material_banner_basic.dart';
import 'package:widgetkit/widgets/material_banner_dismissible.dart';
import 'package:widgetkit/widgets/material_bottom_appbar.dart';
import 'package:widgetkit/widgets/material_bottom_navigation_bar.dart';
import 'package:widgetkit/widgets/material_elevated_button.dart';
import 'package:widgetkit/widgets/material_extended_floating_action_button.dart';
import 'package:widgetkit/widgets/material_floating_action_button.dart';
import 'package:widgetkit/widgets/material_mini_floating_action_button.dart';
import 'package:widgetkit/widgets/material_outlined_button.dart';
import 'package:widgetkit/widgets/material_text_button.dart';
import 'package:widgetkit/widgets/material_toggle_icon_button.dart';
import 'package:widgetkit/widgets/material_toggle_text_button.dart';

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

  static final materialAppbarFull = WidgetViewerDataClass(
    title: 'Full Appbar',
    widget: const MaterialAppbarFull(),
    widgetKey: WidgetKeys.materialAppbarFull,
    widgetFileName: 'material_appbar_full.dart',
    expandWidgetPage: Material2FullScreenViewerPage(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Appbar'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
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
        WidgetViewer.material(widgetViewerDataClass: materialAppbarFull),
      ],
    ),
  );

  static const materialBottomAppbar = WidgetViewerDataClass(
    title: 'Bottom  Appbar',
    widget: MaterialBottomAppbar(),
    widgetKey: WidgetKeys.materialBottomAppbar,
    widgetFileName: 'material_bottom_appbar.dart',
    expandWidgetPage: Material2Wrapper(child: MaterialBottomAppbar()),
    isScaffoldWidget: true,
  );

  static const materialBackdrop = WidgetViewerDataClass(
    title: 'Backdrop',
    widget: MaterialBackdrop(),
    widgetKey: WidgetKeys.materialBackdrop,
    widgetFileName: 'material_backdrop.dart',
    expandWidgetPage: Material2Wrapper(child: MaterialBackdrop()),
    isScaffoldWidget: true,
  );

  static const materialBannerBasic = WidgetViewerDataClass(
    title: 'Basic Banner',
    widget: MaterialBannerBasic(),
    widgetKey: WidgetKeys.materialBannerBasic,
    widgetFileName: 'material_banner_basic.dart',
    expandWidgetPage: Material2Wrapper(child: MaterialBannerBasic()),
    isScaffoldWidget: true,
  );
  static const materialBannerDismissible = WidgetViewerDataClass(
    title: 'Dismissible Banner',
    widget: MaterialBannerDismissible(),
    widgetKey: WidgetKeys.materialBannerDismissible,
    widgetFileName: 'material_banner_dismissible.dart',
    expandWidgetPage: Material2Wrapper(child: MaterialBannerDismissible()),
    isScaffoldWidget: true,
  );

  static final materialBanner = WidgetViewerWithVariationDataClass(
    widgetTitle: 'Banner',
    widgetKeyName: WidgetKeys.materialBanner,
    widgetViewerDataClass: materialBannerBasic,
    variationPage: WidgetVariationsPage(
      appbarTitle: 'Banners',
      widgets: [
        WidgetViewer.material(widgetViewerDataClass: materialBannerBasic),
        WidgetViewer.material(widgetViewerDataClass: materialBannerDismissible),
      ],
    ),
  );

  //TODO: no todo
  static const materialElevatedButton = WidgetViewerDataClass(
    title: 'Elevated Button',
    widget: MaterialElevatedButton(),
    widgetKey: WidgetKeys.materialElevatedButton,
    widgetFileName: 'material_elevated_button.dart',
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

  static const materialExtendedFloatingActionButton = WidgetViewerDataClass(
    title: 'Extented Floating Action Button',
    widget: MaterialExtendedFloatingActionButton(),
    widgetKey: WidgetKeys.materialExtendedFloatingActionButton,
    widgetFileName: 'material_extended_floating_action_button.dart',
  );

  static const materialMiniFloatingActionButton = WidgetViewerDataClass(
    title: 'Mini Floating Action Button',
    widget: MaterialMiniFloatingActionButton(),
    widgetKey: WidgetKeys.materialMiniFloatingActionButton,
    widgetFileName: 'material_mini_floating_action_button.dart',
  );

  static final materialFloatingActionButtons = WidgetViewerWithVariationDataClass(
    widgetTitle: 'Floating Action Button',
    widgetKeyName: WidgetKeys.materialFloatingActionButtons,
    widgetViewerDataClass: materialFloatingActionButton,
    variationPage: WidgetVariationsPage(
      appbarTitle: 'Floating Action Buttons',
      widgets: [
        WidgetViewer.material(widgetViewerDataClass: materialFloatingActionButton),
        WidgetViewer.material(widgetViewerDataClass: materialMiniFloatingActionButton),
        WidgetViewer.material(widgetViewerDataClass: materialExtendedFloatingActionButton),
      ],
    ),
  );
  static const materialToggleTextButton = WidgetViewerDataClass(
    title: 'Toggle Text Button',
    widget: MaterialToggleTextButton(),
    widgetKey: WidgetKeys.materialToggleTextButton,
    widgetFileName: 'material_toggle_text_button.dart',
  );

  static const materialToggleIconButton = WidgetViewerDataClass(
    title: 'Toggle Icon Button',
    widget: MaterialToggleIconButton(),
    widgetKey: WidgetKeys.materialToggleIconButton,
    widgetFileName: 'material_toggle_icon_button.dart',
  );

  static final materialToggleButton = WidgetViewerWithVariationDataClass(
    widgetTitle: 'Toggle Button',
    widgetKeyName: WidgetKeys.materialToggleButton,
    widgetViewerDataClass: materialToggleTextButton,
    variationPage: WidgetVariationsPage(
      appbarTitle: 'Toggle Buttons',
      widgets: [
        WidgetViewer.material(widgetViewerDataClass: materialToggleTextButton),
        WidgetViewer.material(widgetViewerDataClass: materialToggleIconButton),
      ],
    ),
  );

  static final materialBottomNavigationBar = WidgetViewerDataClass(
    title: 'Bottom Navigation Bar',
    widget: const MaterialBottomNavigationBar(),
    widgetName: const MaterialBottomNavigationBar().toString(),
    widgetKey: WidgetKeys.materialBottomNavigationBar,
    widgetFileName: 'material_bottom_navigation_bar.dart',
    expandWidgetPage: const Material2Wrapper(child: MaterialBottomNavigationBar()),
    isScaffoldWidget: true,
  );
}
