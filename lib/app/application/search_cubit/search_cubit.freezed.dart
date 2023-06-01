// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  List<Widget> get widgets => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Widget> widgets) empty,
    required TResult Function(List<Widget> widgets) loading,
    required TResult Function(List<Widget> widgets) success,
    required TResult Function(List<Widget> widgets) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Widget> widgets)? empty,
    TResult? Function(List<Widget> widgets)? loading,
    TResult? Function(List<Widget> widgets)? success,
    TResult? Function(List<Widget> widgets)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Widget> widgets)? empty,
    TResult Function(List<Widget> widgets)? loading,
    TResult Function(List<Widget> widgets)? success,
    TResult Function(List<Widget> widgets)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({List<Widget> widgets});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgets = null,
  }) {
    return _then(_value.copyWith(
      widgets: null == widgets
          ? _value.widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Widget> widgets});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgets = null,
  }) {
    return _then(_$_Empty(
      null == widgets
          ? _value._widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty(final List<Widget> widgets) : _widgets = widgets;

  final List<Widget> _widgets;
  @override
  List<Widget> get widgets {
    if (_widgets is EqualUnmodifiableListView) return _widgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'SearchState.empty(widgets: $widgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_widgets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      __$$_EmptyCopyWithImpl<_$_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Widget> widgets) empty,
    required TResult Function(List<Widget> widgets) loading,
    required TResult Function(List<Widget> widgets) success,
    required TResult Function(List<Widget> widgets) notFound,
  }) {
    return empty(widgets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Widget> widgets)? empty,
    TResult? Function(List<Widget> widgets)? loading,
    TResult? Function(List<Widget> widgets)? success,
    TResult? Function(List<Widget> widgets)? notFound,
  }) {
    return empty?.call(widgets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Widget> widgets)? empty,
    TResult Function(List<Widget> widgets)? loading,
    TResult Function(List<Widget> widgets)? success,
    TResult Function(List<Widget> widgets)? notFound,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(widgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements SearchState {
  const factory _Empty(final List<Widget> widgets) = _$_Empty;

  @override
  List<Widget> get widgets;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Widget> widgets});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgets = null,
  }) {
    return _then(_$_Loading(
      null == widgets
          ? _value._widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(final List<Widget> widgets) : _widgets = widgets;

  final List<Widget> _widgets;
  @override
  List<Widget> get widgets {
    if (_widgets is EqualUnmodifiableListView) return _widgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'SearchState.loading(widgets: $widgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_widgets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Widget> widgets) empty,
    required TResult Function(List<Widget> widgets) loading,
    required TResult Function(List<Widget> widgets) success,
    required TResult Function(List<Widget> widgets) notFound,
  }) {
    return loading(widgets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Widget> widgets)? empty,
    TResult? Function(List<Widget> widgets)? loading,
    TResult? Function(List<Widget> widgets)? success,
    TResult? Function(List<Widget> widgets)? notFound,
  }) {
    return loading?.call(widgets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Widget> widgets)? empty,
    TResult Function(List<Widget> widgets)? loading,
    TResult Function(List<Widget> widgets)? success,
    TResult Function(List<Widget> widgets)? notFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(widgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading(final List<Widget> widgets) = _$_Loading;

  @override
  List<Widget> get widgets;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Widget> widgets});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgets = null,
  }) {
    return _then(_$_Success(
      null == widgets
          ? _value._widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<Widget> widgets) : _widgets = widgets;

  final List<Widget> _widgets;
  @override
  List<Widget> get widgets {
    if (_widgets is EqualUnmodifiableListView) return _widgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'SearchState.success(widgets: $widgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_widgets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Widget> widgets) empty,
    required TResult Function(List<Widget> widgets) loading,
    required TResult Function(List<Widget> widgets) success,
    required TResult Function(List<Widget> widgets) notFound,
  }) {
    return success(widgets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Widget> widgets)? empty,
    TResult? Function(List<Widget> widgets)? loading,
    TResult? Function(List<Widget> widgets)? success,
    TResult? Function(List<Widget> widgets)? notFound,
  }) {
    return success?.call(widgets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Widget> widgets)? empty,
    TResult Function(List<Widget> widgets)? loading,
    TResult Function(List<Widget> widgets)? success,
    TResult Function(List<Widget> widgets)? notFound,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(widgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchState {
  const factory _Success(final List<Widget> widgets) = _$_Success;

  @override
  List<Widget> get widgets;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_NotFoundCopyWith(
          _$_NotFound value, $Res Function(_$_NotFound) then) =
      __$$_NotFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Widget> widgets});
}

/// @nodoc
class __$$_NotFoundCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_NotFound>
    implements _$$_NotFoundCopyWith<$Res> {
  __$$_NotFoundCopyWithImpl(
      _$_NotFound _value, $Res Function(_$_NotFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgets = null,
  }) {
    return _then(_$_NotFound(
      null == widgets
          ? _value._widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$_NotFound implements _NotFound {
  const _$_NotFound(final List<Widget> widgets) : _widgets = widgets;

  final List<Widget> _widgets;
  @override
  List<Widget> get widgets {
    if (_widgets is EqualUnmodifiableListView) return _widgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'SearchState.notFound(widgets: $widgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFound &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_widgets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundCopyWith<_$_NotFound> get copyWith =>
      __$$_NotFoundCopyWithImpl<_$_NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Widget> widgets) empty,
    required TResult Function(List<Widget> widgets) loading,
    required TResult Function(List<Widget> widgets) success,
    required TResult Function(List<Widget> widgets) notFound,
  }) {
    return notFound(widgets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Widget> widgets)? empty,
    TResult? Function(List<Widget> widgets)? loading,
    TResult? Function(List<Widget> widgets)? success,
    TResult? Function(List<Widget> widgets)? notFound,
  }) {
    return notFound?.call(widgets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Widget> widgets)? empty,
    TResult Function(List<Widget> widgets)? loading,
    TResult Function(List<Widget> widgets)? success,
    TResult Function(List<Widget> widgets)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(widgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements SearchState {
  const factory _NotFound(final List<Widget> widgets) = _$_NotFound;

  @override
  List<Widget> get widgets;
  @override
  @JsonKey(ignore: true)
  _$$_NotFoundCopyWith<_$_NotFound> get copyWith =>
      throw _privateConstructorUsedError;
}
