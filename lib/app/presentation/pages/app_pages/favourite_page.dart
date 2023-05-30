import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/favourite_bloc/favourite_cubit.dart';
import 'package:widgetkit/app/application/favourite_bloc/favourite_state.dart';
import 'package:widgetkit/app/core/app_strings.dart';
import 'package:widgetkit/app/core/widgets_map.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.favouriteWidgets),
      ),
      body: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          final favouriteWidgetList =
              _widgetNamesListToWidgets(state.favourite, widgetsMap);

          return ListView.builder(
            itemCount: favouriteWidgetList.length,
            itemBuilder: (BuildContext context, int index) =>
                favouriteWidgetList[index],
          );
        },
      ),
    );
  }

  List<Widget> _widgetNamesListToWidgets(
      List<String> widgetNameList, Map<String, Widget> widgetMap) {
    Map<String, Widget> newWidgetMap =
        Map<String, Widget>.from(widgetMap); //TODO

    newWidgetMap.removeWhere(
      (key, value) {
        return !widgetNameList.contains(key);
      },
    );
    return newWidgetMap.values.toList();
  }
}
