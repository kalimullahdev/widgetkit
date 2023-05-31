// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavouriteState _$FavouriteStateFromJson(Map<String, dynamic> json) {
  return _FavouriteState.fromJson(json);
}

/// @nodoc
mixin _$FavouriteState {
  List<String> get favourites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteStateCopyWith<FavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
  @useResult
  $Res call({List<String> favourites});
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favourites = null,
  }) {
    return _then(_value.copyWith(
      favourites: null == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavouriteStateCopyWith<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  factory _$$_FavouriteStateCopyWith(
          _$_FavouriteState value, $Res Function(_$_FavouriteState) then) =
      __$$_FavouriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> favourites});
}

/// @nodoc
class __$$_FavouriteStateCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$_FavouriteState>
    implements _$$_FavouriteStateCopyWith<$Res> {
  __$$_FavouriteStateCopyWithImpl(
      _$_FavouriteState _value, $Res Function(_$_FavouriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favourites = null,
  }) {
    return _then(_$_FavouriteState(
      favourites: null == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavouriteState implements _FavouriteState {
  const _$_FavouriteState({required final List<String> favourites})
      : _favourites = favourites;

  factory _$_FavouriteState.fromJson(Map<String, dynamic> json) =>
      _$$_FavouriteStateFromJson(json);

  final List<String> _favourites;
  @override
  List<String> get favourites {
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favourites);
  }

  @override
  String toString() {
    return 'FavouriteState(favourites: $favourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouriteState &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favourites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavouriteStateCopyWith<_$_FavouriteState> get copyWith =>
      __$$_FavouriteStateCopyWithImpl<_$_FavouriteState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavouriteStateToJson(
      this,
    );
  }
}

abstract class _FavouriteState implements FavouriteState {
  const factory _FavouriteState({required final List<String> favourites}) =
      _$_FavouriteState;

  factory _FavouriteState.fromJson(Map<String, dynamic> json) =
      _$_FavouriteState.fromJson;

  @override
  List<String> get favourites;
  @override
  @JsonKey(ignore: true)
  _$$_FavouriteStateCopyWith<_$_FavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
