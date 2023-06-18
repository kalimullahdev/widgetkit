import 'package:flutter/material.dart';

extension EBuildContext on BuildContext {
  ThemeData get themeData => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  bool get isDarkTheme => MediaQuery.of(this).platformBrightness == Brightness.dark;

  Size get screenSize => MediaQuery.of(this).size;
  void snackBar(String messsage) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(messsage),
        ),
      );
}
