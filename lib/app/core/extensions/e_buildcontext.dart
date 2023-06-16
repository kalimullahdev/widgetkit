import 'package:flutter/material.dart';

extension EBuildContext on BuildContext {
  ThemeData get themeData => Theme.of(this);
  void snackBar(String messsage) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(messsage),
        ),
      );
}
