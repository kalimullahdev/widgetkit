import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:widgetkit/app/core/mixin/filter_widgets.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> with FilterWidgetsMixin {
  SearchCubit() : super(const SearchState.empty([]));

  Future<void> search(String query) async {
    if (query.isEmpty) {
      emit(const SearchState.empty([]));
      return;
    }
    emit(SearchState.loading(state.widgets));

    EasyDebounce.debounce('debouncer', const Duration(milliseconds: 350), () async {
      List<String> keywords = query.split(' ')..removeWhere((element) => element.isEmpty);
      final widgets = await searchedWidgetsFromKeywords(keywords);
      emit(widgets.isEmpty ? const SearchState.notFound([]) : SearchState.success(widgets));
    });
  }

  void reset() => emit(const SearchState.empty([]));
}
