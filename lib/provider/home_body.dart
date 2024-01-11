import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'counter/counter_provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text(
          context.watch<CounterProvider>().value.toString(),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().increase();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().decrease();
              },
              tooltip: 'Decrease',
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
