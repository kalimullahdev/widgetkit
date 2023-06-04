import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/widgets/material2_wrapper.dart';

class Material2FullScreenViewerPage extends StatelessWidget {
  const Material2FullScreenViewerPage({
    Key? key,
    required this.widget,
    this.appBar,
  }) : super(key: key);

  final Widget widget;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Material2Wrapper(
      child: Scaffold(
        appBar: appBar,
        body: Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: widget,
        ),
      ),
    );
  }
}
