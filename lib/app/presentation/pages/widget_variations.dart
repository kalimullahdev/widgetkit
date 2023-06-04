import 'package:flutter/material.dart';
import 'package:widgetkit/app/presentation/widgets/theme_changing_icon.dart';

class WidgetVariationsPage extends StatefulWidget {
  const WidgetVariationsPage({
    Key? key,
    required this.appbarTitle,
    required this.widgets,
  }) : super(key: key);

  final String appbarTitle;
  final List<Widget> widgets;

  @override
  State<WidgetVariationsPage> createState() => _WidgetVariationsPageState();
}

class _WidgetVariationsPageState extends State<WidgetVariationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appbarTitle),
        actions: const [ThemeChangingIcon()],
      ),
      body: ListView.builder(
        itemCount: widget.widgets.length,
        itemBuilder: (BuildContext context, int index) => widget.widgets[index],
      ),
    );
  }
}
