import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/widgets/material2_wrapper.dart';

class Material2FullScreenViewerPage extends StatelessWidget {
  const Material2FullScreenViewerPage({
    Key? key,
    this.widget,
    this.appBar,
    this.bodyChild,
  }) : super(key: key);

  final Widget? widget;
  final Widget? bodyChild;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Material2Wrapper(
      child: Scaffold(
        appBar: appBar,
        body: bodyChild ??
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: widget,
            ),
      ),
    );
  }
}
