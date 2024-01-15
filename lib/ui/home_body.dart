import 'package:bloc_one/ui/calculator/counter_bloc.dart';
import 'package:bloc_one/ui/calculator/counter_event.dart';
import 'package:bloc_one/ui/calculator/counter_state.dart';
import 'package:bloc_one/ui/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    void addNumber(double number) {
      context.read<CalculatorBloc>().add(AddNumber(number: number));
    }
    void addChar(String symbol) {
      context.read<CalculatorBloc>().add(AddSymbol(symbol: symbol));
    }

    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (BuildContext context, CalculatorState state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      state.value.toString(),
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    reverse: true,
                    children: [
                      CalculatorButton(
                        title: "0",
                        click: () => addNumber(0),
                      ),
                      CalculatorButton(
                        title: "1",
                        click: () => addNumber(1),
                      ),
                      CalculatorButton(
                        title: "2",
                        click: () => addNumber(2),
                      ),
                      CalculatorButton(
                        title: "+",
                        click: () => addChar('+'),
                      ),
                      CalculatorButton(
                        title: "3",
                        click: () => addNumber(3),
                      ),
                      CalculatorButton(
                        title: "4",
                        click: () => addNumber(4),
                      ),
                      CalculatorButton(
                        title: "5",
                        click: () => addNumber(5),
                      ),
                      CalculatorButton(
                        title: "-",
                        click: () => addChar('-'),
                      ),
                      CalculatorButton(
                        title: "6",
                        click: () => addNumber(6),
                      ),
                      CalculatorButton(
                        title: "7",
                        click: () => addNumber(7),
                      ),
                      CalculatorButton(
                        title: "8",
                        click: () => addNumber(8),
                      ),
                      CalculatorButton(
                        title: "/",
                        click: () => addChar('/'),
                      ),
                      CalculatorButton(
                        title: "9",
                        click: () => addNumber(9),
                      ),
                      CalculatorButton(
                        title: "*",
                        click: () => addChar('*'),
                      ),
                      CalculatorButton(
                        title: "=",
                        click: () => addChar('='),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
