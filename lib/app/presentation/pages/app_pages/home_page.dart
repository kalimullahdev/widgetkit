import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/core/app_strings.dart';
import 'package:widgetkit/app/core/nav.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/favourite_page.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/search_page.dart';
import 'package:widgetkit/app/presentation/pages/common_widgets/custom_list_tile.dart';
import 'package:widgetkit/app/presentation/pages/widget_pages/cupertino/cupertino_widgets_page.dart';
import 'package:widgetkit/app/presentation/pages/widget_pages/material/material_widgets_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgetsList = [];
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text(AppStrings.appName),
        actions: [
          IconButton(
            onPressed: () => Nav.push(context, const FavouritePage()),
            icon: const Icon(FontAwesomeIcons.heart),
          ),
          IconButton(
            onPressed: () => Nav.push(context, const SearchPage()),
            icon: const Icon(Icons.search),
          ),
          DayNightSwitcherIcon(
            isDarkModeEnabled: isDarkModeEnabled,
            onStateChanged: (isDarkModeEnabled) {
              setState(() {
                this.isDarkModeEnabled = isDarkModeEnabled;
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          CustomListTile(
            title: 'Material Widgets',
            onTap: () => Nav.push(context, const MaterialWidgetsPage()),
          ),
          CustomListTile(
            title: 'Cupertino Widgets',
            onTap: () => Nav.push(context, const CupertinoWidgetsPage()),
          ),
          ...widgetsList,
        ],
      ),
    );
  }
}
