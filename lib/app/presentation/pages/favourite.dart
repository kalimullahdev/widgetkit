import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_cubit.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_state.dart';
import 'package:widgetkit/app/presentation/data/widgets_map.dart';
import 'package:widgetkit/app/presentation/widgets/theme_changing_icon.dart';

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
        title: const Text("Favorite Widgets"),
        actions: const [ThemeChangingIcon()],
      ),
      body: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, favouriteState) {
          final favouriteWidgetList = _widgetKeysToWidgets(favouriteState.favourites);

          return ListView.builder(
            itemCount: favouriteWidgetList.length,
            itemBuilder: (BuildContext context, int index) => favouriteWidgetList[index],
          );
        },
      ),
    );
  }

  List<Widget> _widgetKeysToWidgets(List<String> widgetKeysList) {
    final widgetsEntries = widgetsMap.entries.where(
      (element) => widgetKeysList.contains(element.key),
    );

    return Map.fromEntries(widgetsEntries).values.toList();
  }
}
