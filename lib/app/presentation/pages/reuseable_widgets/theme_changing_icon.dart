import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/application/theme_cubit/theme_cubit.dart';

class ThemeChangingIcon extends StatelessWidget {
  const ThemeChangingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, isDarkMode) {
        return Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: IconButton(
            icon: Icon(isDarkMode ? Icons.sunny : FontAwesomeIcons.solidMoon),
            onPressed: () {
              context.read<ThemeCubit>().changeTheme(!isDarkMode);
            },
          ),
        );
      },
    );
  }
}
