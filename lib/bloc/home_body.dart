import 'package:bloc_one/bloc/counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/counter_bloc.dart';
import 'counter/counter_state.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (BuildContext context, CounterState state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Center(child: Text(state.value.toString())),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncreaseEvent());
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 8,
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecreaseEvent());
                  },
                  tooltip: 'Decrease',
                  child: const Icon(Icons.remove),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
