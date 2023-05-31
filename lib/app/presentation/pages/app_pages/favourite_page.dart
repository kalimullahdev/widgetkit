import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_cubit.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_state.dart';
import 'package:widgetkit/app/core/app_strings.dart';
import 'package:widgetkit/app/core/widgets_map.dart';
import 'package:widgetkit/app/presentation/pages/reuseable_widgets/theme_changing_icon.dart';

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
        actions: const [
          ThemeChangingIcon(),
        ],
      ),
      body: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, favouriteState) {
          final favouriteWidgetList =
              _widgetNamesListToWidgets(favouriteState.favourites, widgetsMap);

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
    Map<String, Widget> newWidgetMap = Map<String, Widget>.from(widgetMap);

    newWidgetMap.removeWhere(
      (key, value) {
        return !widgetNameList.contains(key);
      },
    );
    return newWidgetMap.values.toList();
  }
}
