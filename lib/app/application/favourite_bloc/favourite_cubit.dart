import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:widgetkit/app/application/favourite_bloc/favourite_state.dart';

class FavouriteCubit extends HydratedCubit<FavouriteState> {
  FavouriteCubit() : super(const FavouriteState(favourite: []));

  void addToFavourite(String widgetName) {
    emit(
      state.copyWith(favourite: [
        widgetName,
        ...state.favourite,
      ]),
    );
  }

  void removeFromFavourite(String widgetName) {
    List<String> updatedFavouriteList = state.favourite.toList();
    updatedFavouriteList.removeWhere(
      (widgetN) => widgetN == widgetName,
    );

    emit(state.copyWith(favourite: updatedFavouriteList));
  }

  @override
  FavouriteState? fromJson(Map<String, dynamic> json) =>
      FavouriteState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(FavouriteState state) => state.toJson();
}
