// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavouriteState _$$_FavouriteStateFromJson(Map<String, dynamic> json) =>
    _$_FavouriteState(
      favourites: (json['favourites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_FavouriteStateToJson(_$_FavouriteState instance) =>
    <String, dynamic>{
      'favourites': instance.favourites,
    };
