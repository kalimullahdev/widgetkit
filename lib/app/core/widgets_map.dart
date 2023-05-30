import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/widget_keys.dart';
import 'package:widgetkit/app/presentation/widget_viewers/material/buttons/elevated_button/elevated_button.dart';
import 'package:widgetkit/app/presentation/widget_viewers/material/buttons/outlined_button/outlined_button.dart';

const Map<String, Widget> widgetsMap = {
  WidgetKeys.materialElevatedButton: MaterialElevatedButtonInfo(),
  WidgetKeys.materialOutlinedButton: MaterialOutlinedButtonInfo(),
};
