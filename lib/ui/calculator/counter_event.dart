class CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final double number;
  AddNumber({required this.number});
}

class AddSymbol extends CalculatorEvent {
  final String symbol;
  AddSymbol({required this.symbol});
}
