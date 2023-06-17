import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/extensions/e_buildcontext.dart';

class WidgetViewerHeightWrapper extends StatelessWidget {
  const WidgetViewerHeightWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenSize.height * .68,
      child: child,
    );
  }
}
