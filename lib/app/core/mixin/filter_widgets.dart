import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/extensions/e_iterable.dart';
import 'package:widgetkit/app/presentation/data/widgets_map.dart';

//TODO: can be improved
mixin FilterWidgetsMixin {
  Future<List<Widget>> filterWidgetsFromKeywords(List<String> keywords) {
    return Isolate.run(() {
      final filteredWidgetEntries = widgetsMap.entries.where((element) {
        return keywords.reversed.foldAndReturnIfNotFound(
          true,
          (previousValue, keyword) {
            return previousValue && element.key.contains(keyword);
          },
        );
      });

      return Map.fromEntries(filteredWidgetEntries).values.toList();
    });
  }

  Future<List<Widget>> searchedWidgetsFromKeywords(List<String> keywords) {
    return Isolate.run(() {
      final filteredWidgetEntries = widgetsMap.entries.where((element) {
        return keywords.reversed.fold(
          true,
          (previousValue, keyword) {
            return previousValue && element.key.contains(keyword);
          },
        );
      });

      return Map.fromEntries(filteredWidgetEntries).values.toList();
    });
  }
}
