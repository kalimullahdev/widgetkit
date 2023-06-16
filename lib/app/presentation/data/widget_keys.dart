//! Remember: Always keep name of widget key in lower case
// WidgetKeys are used for filtering and searching in map widgets
// It contains both generic (For WidgetTypesPageDataClass like material, button)
// And unique (For widgetsMap like materialelevatedbuttonsimple material elevated button simple) keys
class WidgetKeys {
  // Private keys
  static const String variation = "variation";

  // Generic or Simple keys
  static const String material = 'material';
  static const String appbar = 'appbars';
  static const String button = 'buttons';

  //Unique Keys
  static const String materialAppbar = '$material$appbar';
  static const String materialAppbarBasic = '$materialAppbar${variation}basic';
  static const String materialAppbarAction = '$materialAppbar${variation}action';
  static const String materialAppbarSearch = '$materialAppbar${variation}search';
  // static const String materialAppbarV1 = '${_materialAppbarVar}1';
  // static const String materialAppbarV2 = '${_materialAppbarVar}2';

  static const String materialButton = "$material$button";
  static const String materialElevatedButton = '${materialButton}elevated';
  static const String materialElevatedButtonV1 = '$materialElevatedButton${variation}1';
  static const String materialOutlinedButton = '${materialButton}outlined';
  static const String materialTextButton = "${materialButton}text";
  static const String materialFloatingActionButton = "${materialButton}floatingaction";

  static const String cupertino = 'cupertino';
}
