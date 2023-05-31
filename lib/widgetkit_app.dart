import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/theme_cubit/theme_cubit.dart';
import 'package:widgetkit/app/core/app_routes_name.dart';
import 'package:widgetkit/app/core/color_schemes.g.dart';
import 'package:widgetkit/app/core/icon_theme.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/favourite_page.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/home_page.dart';

class WidgetkitApp extends StatelessWidget {
  const WidgetkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, isDarkMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WidgetKit',
          themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightColorScheme,
            iconTheme: iconThemeData,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme,
            iconTheme: iconThemeData,
          ),
          home: const HomePage(),
          // initialRoute: '/',
          routes: {
            AppRouteNames.favoriteRoute: (context) => const FavouritePage(),
          },
        );
      },
    );
  }
}