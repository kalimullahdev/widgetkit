import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_state.dart';

class FavouriteCubit extends HydratedCubit<FavouriteState> {
  FavouriteCubit() : super(const FavouriteState(favourites: []));

  void addToFavourite(String widgetName) {
    emit(
      state.copyWith(favourites: [
        widgetName,
        ...state.favourites,
      ]),
    );
  }

  void removeFromFavourite(String widgetName) {
    List<String> updatedFavouriteList = state.favourites.toList();
    updatedFavouriteList.removeWhere(
      (widgetN) => widgetN == widgetName,
    );

    emit(state.copyWith(favourites: updatedFavouriteList));
  }

  @override
  FavouriteState? fromJson(Map<String, dynamic> json) =>
      FavouriteState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(FavouriteState state) => state.toJson();
}
