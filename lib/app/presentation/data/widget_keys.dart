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
  static const String search = 'searchbar';

  //Unique Keys
  static const String materialAppbar = '$material$appbar';
  static const String materialAppbarBasic = '$materialAppbar${variation}basic';
  static const String materialAppbarAction = '$materialAppbar${variation}action';
  static const String materialAppbarSearch = '$materialAppbar$variation$search';
  static const String materialAppbarFull = '$materialAppbar${variation}full';

  static const String materialBottomAppbar = '${material}bottom$appbar';
  static const String materialBackdrop = '${material}backdrop';

  static const String materialBanner = '${material}banner';
  static const String materialBannerBasic = '$materialBanner${variation}basic';
  static const String materialBannerDismissible = '$material$variation${variation}dismissible';

  // static const String materialAppbarV1 = '${_materialAppbarVar}1';
  // static const String materialAppbarV2 = '${_materialAppbarVar}2';

  static const String materialButton = "$material$button";
  static const String materialElevatedButton = '${materialButton}elevated';
  static const String materialOutlinedButton = '${materialButton}outlined';
  static const String materialTextButton = "${materialButton}text";
  static const String materialFloatingActionButton = "${materialButton}floatingaction";
  static const String materialToggleButton = '${materialButton}toggle';
  static const String materialToggleTextButton = '$materialToggleButton${variation}text';
  static const String materialToggleIconButton = '$materialToggleButton${variation}icon';

  static const String materialBottomNavigationBar = "${material}bottomnavigationbar"; //TODO to lower case

  static const String cupertino = 'cupertino';
}
