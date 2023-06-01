import 'package:flutter/material.dart';

class Nav {
  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void pushWithArguments(
    BuildContext context, {
    required Widget page,
    required Object arguments,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
