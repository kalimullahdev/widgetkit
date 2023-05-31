import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/nav.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/app_list_tile.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/theme_changing_icon.dart';
import 'package:widgetkit/app/presentation/pages/widget_pages/material/button_list_page.dart';

class MaterialWidgetsPage extends StatelessWidget {
  const MaterialWidgetsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Material Widgets',
        ),
        actions: const [ThemeChangingIcon()],
      ),
      body: ListView(
        children: [
          AppListTile(
            title: 'Buttons',
            onTap: () => Nav.push(context, const ButtonListPage()),
          ),
          AppListTile(
            title: 'Appbar',
            onTap: () => Nav.push(context, const ButtonListPage()),
          ),
        ],
      ),
    );
  }
}
