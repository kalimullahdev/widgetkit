import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/core/app_routes_name.dart';
import 'package:widgetkit/app/core/app_strings.dart';
import 'package:widgetkit/app/core/nav.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/home_page_widgets/app_drawer.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/search_page.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/app_list_tile.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/theme_changing_icon.dart';
import 'package:widgetkit/app/presentation/pages/widget_pages/cupertino/cupertino_widgets_page.dart';
import 'package:widgetkit/app/presentation/pages/widget_pages/material/material_widgets_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgetsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, AppRouteNames.favoriteRoute),
            icon: const Icon(
              FontAwesomeIcons.solidHeart,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () => Nav.push(context, const SearchPage()),
            icon: const Icon(Icons.search),
          ),
          const ThemeChangingIcon(),
        ],
      ),
      body: ListView(
        children: [
          AppListTile(
            title: 'Material Widgets',
            onTap: () => Nav.push(context, const MaterialWidgetsPage()),
          ),
          AppListTile(
            title: 'Cupertino Widgets',
            onTap: () => Nav.push(context, const CupertinoWidgetsPage()),
          ),
          ...widgetsList,
        ],
      ),
    );
  }
}
