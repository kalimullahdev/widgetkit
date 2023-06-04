import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/core/routing/app_routes_name.dart';
import 'package:widgetkit/app/core/routing/nav.dart';
import 'package:widgetkit/app/presentation/data/widget_types_pages.dart';
import 'package:widgetkit/app/presentation/pages/home/widgets/app_drawer.dart';
import 'package:widgetkit/app/presentation/pages/search.dart';
import 'package:widgetkit/app/presentation/pages/widget_types.dart';
import 'package:widgetkit/app/presentation/widgets/app_list_tile.dart';
import 'package:widgetkit/app/presentation/widgets/theme_changing_icon.dart';

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
        title: const Text("WidgetKit"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, AppRouteNames.favoriteRoute),
            icon: const Icon(
              FontAwesomeIcons.solidHeart,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () => Nav.push(context, const SearchPage()),
            icon: const Icon(Icons.search_rounded),
          ),
          const ThemeChangingIcon(),
        ],
      ),
      body: ListView(
        children: [
          // AppListTile(
          //   title: 'WidgetKit',
          //   onTap: () {},
          //   showTrailingArrow: true,
          // ),
          AppListTile(
            title: 'Material',
            onTap: () {
              Nav.push(
                context,
                const WidgetTypesPage(widgetTypesPageDataClass: WidgetTypesPagesData.material),
              );
            },
            showTrailingArrow: true,
          ),
          AppListTile(
            title: 'Cupertino',
            onTap: () {
              Nav.push(
                context,
                const WidgetTypesPage(widgetTypesPageDataClass: WidgetTypesPagesData.cupertino),
              );
            },
            showTrailingArrow: true,
          ),
          ...widgetsList,
        ],
      ),
    );
  }
}
