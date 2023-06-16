import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/extensions/e_iterable.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/data/widgets_map.dart';

mixin FilterWidgetsMixin {
  Future<List<Widget>> filterWidgetsVariations(List<String> keywords) {
    return Isolate.run(() {
      final filteredWidgetEntries = widgetsMap.entries.where((element) {
        return keywords.reversed.foldAndReturnIfNotFound(
          true,
          (previousValue, keyword) {
            return previousValue && element.key.contains(keyword) && element.key.contains(WidgetKeys.variation);
          },
        );
      });

      return Map.fromEntries(filteredWidgetEntries).values.toList();
    });
  }

  Future<List<Widget>> filterWidgetsWithoutVariations(List<String> keywords) {
    return Isolate.run(() {
      final filteredWidgetEntries = widgetsMap.entries.where((element) {
        return keywords.reversed.foldAndReturnIfNotFound(
          true,
          (previousValue, keyword) {
            return previousValue && element.key.contains(keyword) && !element.key.contains(WidgetKeys.variation);
          },
        );
      });

      return Map.fromEntries(filteredWidgetEntries).values.toList();
    });
  }

  Future<List<Widget>> searchedWidgets(List<String> keywords) {
    return Isolate.run(() {
      final filteredWidgetEntries = widgetsMap.entries.where((element) {
        return keywords.reversed.fold(
          true,
          (previousValue, keyword) {
            return previousValue && element.key.contains(keyword.toLowerCase()) && !element.key.contains(WidgetKeys.variation);
          },
        );
      });

      return Map.fromEntries(filteredWidgetEntries).values.toList();
    });
  }
}
