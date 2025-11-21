import 'package:bloc/bloc.dart';

import '../../domain/entities/language.dart';
import 'language_search_state.dart';

class LanguageSearchCubit extends Cubit<LanguageSearchState> {
  LanguageSearchCubit() : super(LanguageSearchState.initial);
  
  void search(String query) {
    final normalized = query.toLowerCase().trim();
    final matching = Language.values.where((language) {
      return language.name.toLowerCase().contains(normalized);
    }).toList();
    return emit(LanguageSearchState(query: query, result: matching));
  }
}
