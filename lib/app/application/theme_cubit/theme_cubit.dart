import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<bool> {
  ThemeCubit()
      : super(
          true, // true means theme is dark
        );
  static const String _themKey = 'theme';

  void changeTheme(bool themeState) => emit(themeState);

  @override
  bool? fromJson(Map<String, dynamic> json) => json[_themKey];

  @override
  Map<String, dynamic>? toJson(bool state) => {_themKey: state};
}
