import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_cubit.dart';
import 'package:widgetkit/app/application/search_cubit/search_cubit.dart';
import 'package:widgetkit/app/core/app_startup_config.dart';
import 'package:widgetkit/widgetkit_app.dart';

import 'app/application/theme_cubit/theme_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await runAppStartupConfig();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<FavouriteCubit>(
          create: (BuildContext context) => FavouriteCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
        BlocProvider<SearchCubit>(
          create: (BuildContext context) => SearchCubit(),
        ),
      ],
      child: const WidgetkitApp(),
    ),
  );
}


//TODO: create widget viewer variation data class
//TODO: separate variation from widgetviewer
// Create WidgetViewerVariationDataClass and WidgetViewerEntityDataClass subtype of super type