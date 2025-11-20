import 'package:bloc/bloc.dart';
import 'package:lango/features/onboarding/presentation/bloc/typing_event.dart';
import 'package:lango/features/onboarding/presentation/bloc/typing_state.dart';

import '../../../../core/utils/debouncer.dart';

class TypingBloc extends Bloc<TypingEvent, TypingState> {
  final debouncer = Debouncer(Duration(milliseconds: 1000));

  TypingBloc() : super(TypingState.initial) {
    on<TypingStarted>((event, emit) {
      if (state.status != TypingStatus.initial) return;
      emit(state.copyWith(status: TypingStatus.idle));
    });
    on<TypingChanged>((event, emit) async {
      emit(state.copyWith(status: TypingStatus.typing, text: event.text));
      await debouncer.debounce();
      emit(state.copyWith(status: TypingStatus.idle));
    });
  }
}
