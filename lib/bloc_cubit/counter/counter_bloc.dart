import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterBloc extends Cubit<CounterState> {
  CounterBloc(): super(CounterState(0));

  void increase(){
    var lastValue = state.value;
    lastValue++;
    emit(CounterState(lastValue));
  }
  void decrease(){
    var lastValue = state.value;
    lastValue--;
    emit(CounterState(lastValue));
  }

}
