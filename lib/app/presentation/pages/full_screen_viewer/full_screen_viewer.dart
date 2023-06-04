import 'package:flutter/material.dart';

class FullScreenViewerPage extends StatelessWidget {
  const FullScreenViewerPage({
    Key? key,
    required this.widget,
    this.appBar,
  }) : super(key: key);

  final Widget widget;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: widget,
      ),
    );
  }
}
