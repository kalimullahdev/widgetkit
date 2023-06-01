import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.title,
    required this.onTap,
    this.showTrailingArrow = false,
  });

  final String title;
  final bool showTrailingArrow;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      trailing: showTrailingArrow ? const Icon(Icons.arrow_forward_ios) : null,
    );
  }
}
