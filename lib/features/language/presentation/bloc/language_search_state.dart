import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lango/features/language/domain/entities/language.dart';

part 'language_search_state.freezed.dart';

@freezed
sealed class LanguageSearchState with _$LanguageSearchState {
  static const initial = LanguageSearchState(
    query: '',
    result: Language.values,
  );

  const factory LanguageSearchState({
    required String query,
    required List<Language> result,
  }) = _LanguageSearchState;
}
