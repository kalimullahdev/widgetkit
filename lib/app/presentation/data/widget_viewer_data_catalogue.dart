import 'package:widgetkit/app/domain/data_classes/widget_view_data.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/widgets/material_appbar.dart';
import 'package:widgetkit/widgets/material_elevated_button.dart';
import 'package:widgetkit/widgets/material_floating_action_button.dart';
import 'package:widgetkit/widgets/material_outlined_button.dart';
import 'package:widgetkit/widgets/material_text_button.dart';

class WidgetViewerDataCatalogue {
  static const materialAppbar = WidgetViewerData(
    title: 'Appbar',
    widget: MaterialAppbar(),
    widgetKey: WidgetKeys.materialAppbar,
    widgetFileName: 'material_appbar.dart',
  );

  static const materialElevatedButton = WidgetViewerData(
    title: 'Elevated Button',
    widget: MaterialElevatedButton(),
    widgetKey: WidgetKeys.materialElevatedButton,
    widgetFileName: 'material_elevated_button.dart',
  );
  static const materialOutlinedButton = WidgetViewerData(
    title: 'Outlined Button',
    widget: MaterialOutlinedButton(),
    widgetKey: WidgetKeys.materialOutlinedButton,
    widgetFileName: 'material_outlined_button.dart',
  );

  static const materialTextButton = WidgetViewerData(
    title: 'Text Button',
    widget: MaterialTextButton(),
    widgetKey: WidgetKeys.materialTextButton,
    widgetFileName: 'material_text_button.dart',
  );

  static const materialFloatingActionButton = WidgetViewerData(
    title: 'Floating Action Button',
    widget: MaterialFloatingActionButton(),
    widgetKey: WidgetKeys.materialFloatingActionButton,
    widgetFileName: 'material_floating_action_button.dart',
  );
}
