import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/favourite_bloc/favourite_cubit.dart';
import 'package:widgetkit/app/presentation/pages/app_pages/home_page.dart';

class WidgetkitApp extends StatelessWidget {
  const WidgetkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavouriteCubit>(
          create: (BuildContext context) => FavouriteCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WidgetKit',
        home: HomePage(),
      ),
    );
  }
}
