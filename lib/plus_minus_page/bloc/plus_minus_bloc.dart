import 'package:flutter_bloc/flutter_bloc.dart';

import 'plus_minus_event.dart';
import 'plus_minus_state.dart';

class PlusMinusBloc extends Bloc<PlusMinusEvent, PlusMinusState> {
  PlusMinusBloc() : super(PlusMinusInitial()) {
    on<PlusEvent>((event, emit) {
      emit(PlusMinusState(value: state.value + 1));
    });

    on<MinusEvent>((event, emit) {
      emit(PlusMinusState(value: state.value - 1));
    });
  }
}
