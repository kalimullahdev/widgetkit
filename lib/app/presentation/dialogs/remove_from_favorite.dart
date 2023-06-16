import 'package:flutter/material.dart';

Future<bool?> removeFromFavoriteDialog(
  BuildContext context,
  String widgetName,
) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Are you sure?'),
      content: Text('You want to remove $widgetName widget from your favourite widgets'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
