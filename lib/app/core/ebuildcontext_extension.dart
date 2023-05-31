import 'package:flutter/material.dart';

extension EBuildContext on BuildContext {
  ThemeData get themeData => Theme.of(this);
}
