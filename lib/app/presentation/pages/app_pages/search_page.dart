import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/app_strings.dart';
import 'package:widgetkit/app/core/widgets_map.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Widget> filteredWidgets = widgetsMap.values.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: AppStrings.searchWidget,
          ),
          onChanged: (text) {
            filteredWidgets = Map.fromEntries(widgetsMap.entries.where((entry) {
              return entry.key.toLowerCase().contains(text.toLowerCase());
            })).values.toList();
            setState(() {});
          },
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: filteredWidgets.length,
          itemBuilder: (BuildContext context, int index) {
            return filteredWidgets[index];
          },
        ),
      ),
    );
  }
}
