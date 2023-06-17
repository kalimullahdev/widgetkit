import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/mixin/filter_widgets.dart';
import 'package:widgetkit/app/presentation/widgets/theme_changing_icon.dart';

class WidgetViewerListPage extends StatefulWidget {
  const WidgetViewerListPage({
    Key? key,
    this.customAppbarTitle,
    required this.keywords,
  }) : super(key: key);

  final String? customAppbarTitle;
  final List<String> keywords;

  @override
  State<WidgetViewerListPage> createState() => _WidgetViewerListPageState();
}

class _WidgetViewerListPageState extends State<WidgetViewerListPage> with FilterWidgetsMixin {
  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.customAppbarTitle ?? title ?? ''),
        actions: const [ThemeChangingIcon()],
      ),
      body: FutureBuilder(
        future: filterWidgetsWithoutVariations(widget.keywords),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            final filteredWidgets = snapshot.data!;
            final filteredWidgetsLength = filteredWidgets.length;

            if (filteredWidgetsLength > 1) {
              return ListView.builder(
                itemCount: filteredWidgetsLength,
                itemBuilder: (BuildContext context, int index) => filteredWidgets[index],
              );
            } else {
              return FutureBuilder(
                future: filterWidgetsVariations(widget.keywords),
                builder: (context, snapshot2) {
                  if (snapshot2.hasData && snapshot2.data != null) {
                    final filteredVariationWidgets = snapshot2.data!;
                    return (filteredVariationWidgets.isEmpty)
                        ? SingleChildScrollView(child: filteredWidgets[0])
                        : ListView.builder(
                            itemCount: filteredVariationWidgets.length,
                            itemBuilder: (context, index) => filteredVariationWidgets[index],
                          );
                  }
                  return const _CenterCircularProgressIndicator();
                },
              );
            }
          }
          return const _CenterCircularProgressIndicator();
        },
      ),
    );
  }
}

class _CenterCircularProgressIndicator extends StatelessWidget {
  const _CenterCircularProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
