import 'package:bloc_one/ui/calculator/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  double _lastValue = 0;
  String _lastSymbol = '';
  bool _symbolClick = false;

  CalculatorBloc() : super(CalculatorState(0)) {
    on<AddSymbol>(_handleSymbol);
    on<AddNumber>(_handleNumber);
  }

  void _handleSymbol(AddSymbol event, Emitter<CalculatorState> emit) {
    var newValue = state.value;
    _symbolClick = true;
    double result = 0;
    if (event.symbol == "=") {
      if (_lastSymbol == "+") {
        result = newValue + _lastValue;
      } else if (_lastSymbol == "-") {
        result = newValue - _lastValue;
      } else if (_lastSymbol == "*") {
        result = newValue * _lastValue;
      } else if (_lastSymbol == "/") {
        result = newValue / _lastValue;
      }
      _lastValue = 0;
      _lastSymbol = '';
      _symbolClick = true;
    } else {
      _lastValue = newValue;
      _lastSymbol = event.symbol;
    }

    emit(CalculatorState(result));
  }




  void _handleNumber(AddNumber event, Emitter<CalculatorState> emit) {
    var lastValue = state.value;
    if (_symbolClick || lastValue == 0) {
      lastValue = event.number;
    } else {
      var newNumber = "$lastValue${event.number}";
      lastValue = double.parse(newNumber);
    }
    _symbolClick = false;
    emit(CalculatorState(lastValue));
  }
}
