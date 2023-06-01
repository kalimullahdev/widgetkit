part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.empty(List<Widget> widgets) = _Empty;
  const factory SearchState.loading(List<Widget> widgets) = _Loading;
  const factory SearchState.success(List<Widget> widgets) = _Success;
  const factory SearchState.notFound(List<Widget> widgets) = _NotFound;
}
