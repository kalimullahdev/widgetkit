import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/theme_cubit/theme_cubit.dart';

class Material2Wrapper extends StatelessWidget {
  const Material2Wrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, isDarkTheme) {
        return Theme(
          data: isDarkTheme ? ThemeData.dark() : ThemeData(),
          child: child,
        );
      },
    );
  }
}
