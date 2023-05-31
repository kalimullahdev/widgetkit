import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_state.freezed.dart';
part 'favourite_state.g.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState({
    required List<String> favourites,
  }) = _FavouriteState;

  factory FavouriteState.fromJson(Map<String, dynamic> json) =>
      _$FavouriteStateFromJson(json);
}
