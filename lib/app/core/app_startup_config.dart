import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:widgetkit/app/application/theme_cubit/theme_cubit.dart';

Future<void> runAppStartupConfig() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  ThemeCubit().changeTheme(_isDarkMode);
}

bool get _isDarkMode => PlatformDispatcher.instance.platformBrightness == Brightness.dark;
