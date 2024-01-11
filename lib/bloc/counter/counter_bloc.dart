import 'package:bloc_one/bloc/counter/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncreaseEvent>(increase);
    on<DecreaseEvent>(decrease);
  }

  void increase(IncreaseEvent event, Emitter<CounterState> emit) {
    var lastValue = state.value;
    lastValue++;
    emit(CounterState(lastValue));
  }

  void decrease(DecreaseEvent event, Emitter<CounterState> emit) {
    var lastValue = state.value;
    lastValue--;
    emit(CounterState(lastValue));
  }
}
