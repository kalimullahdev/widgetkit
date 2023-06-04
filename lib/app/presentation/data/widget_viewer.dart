import 'package:flutter/material.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/data/widget_variations.dart';
import 'package:widgetkit/app/presentation/pages/full_screen_viewer/material2_full_screen_viewer.dart';
import 'package:widgetkit/app/presentation/pages/widget_variations.dart';
import 'package:widgetkit/widgets/material_appbar.dart';
import 'package:widgetkit/widgets/material_appbar_action.dart';
import 'package:widgetkit/widgets/material_elevated_button.dart';
import 'package:widgetkit/widgets/material_elevated_button_v1.dart';
import 'package:widgetkit/widgets/material_floating_action_button.dart';
import 'package:widgetkit/widgets/material_outlined_button.dart';
import 'package:widgetkit/widgets/material_text_button.dart';

class WidgetViewerData {
  static const materialAppbar = WidgetViewerDataClass(
    title: 'Simple',
    widget: MaterialAppbar(),
    widgetKey: WidgetKeys.materialAppbar,
    widgetFileName: 'material_appbar.dart',
  );

  static const materialAppbarAction = WidgetViewerDataClass(
    title: 'With Action',
    widget: MaterialAppbarAction(),
    widgetKey: WidgetKeys.materialAppbarAction,
    widgetFileName: 'material_appbar_action.dart',
  );

  static final materialElevatedButton = WidgetViewerDataClass(
    title: 'Elevated Button',
    widget: const MaterialElevatedButton(),
    widgetKey: WidgetKeys.materialElevatedButton,
    widgetFileName: 'material_elevated_button.dart',
    widgetVariationPage: WidgetVariationsPage(
      appbarTitle: 'Elevated Buttons',
      widgets: [...WidgetVariations.materialElevatedButton],
    ),
    playWidgetPage: const ElevatedButtonPlayerPage(),
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

//TODO: Temporary
class ElevatedButtonPlayerPage extends StatelessWidget {
  const ElevatedButtonPlayerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button'),
      ),
      body: const Center(
        child: Text('Elevated Button Player'),
      ),
    );
  }
}
