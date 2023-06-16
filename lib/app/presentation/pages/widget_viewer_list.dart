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
                itemBuilder: (BuildContext context, int index) {
                  return filteredWidgets[index];
                },
              );
            } else {
              return FutureBuilder(
                future: filterWidgetsVariations(widget.keywords),
                builder: (context, snapshot2) {
                  if (snapshot2.hasData && snapshot2.data != null) {
                    final filteredVariationWidgets = snapshot2.data!;
                    return ListView.builder(
                      itemCount: filteredVariationWidgets.length,
                      itemBuilder: (context, index) {
                        return filteredVariationWidgets[index];
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
              );
            }
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
