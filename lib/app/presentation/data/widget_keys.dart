//! Remember: Always keep name of widget key in lower case
// WidgetKeys are used for filtering and searching in map widgets
import 'package:widgetkit/app/presentation/data/widget_keywords.dart';

class WidgetKeys {
  // static const String _var = "var";
  static const String materialAppbar = '${WidgetKeywords.material} ${WidgetKeywords.appbar}';
  // static const String _materialAppbarVar = '$materialAppbar $_var';
  // static const String materialAppbarV1 = '${_materialAppbarVar}1';
  // static const String materialAppbarV2 = '${_materialAppbarVar}2';

  static const String _materialButton = "${WidgetKeywords.material} ${WidgetKeywords.button}";
  static const String materialElevatedButton = '$_materialButton elevated';
  static const String materialOutlinedButton = '$_materialButton outlined';
  static const String materialTextButton = "$_materialButton text";
  static const String materialFloatingActionButton = "$_materialButton floating action";
}
