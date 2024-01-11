import 'package:bloc_one/get_x/counter/counter_get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterGet());
    var get = Get.find<CounterGet>();

    return Obx(() => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Text(
              get.value.toString()
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  get.value++;
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 8,
              ),
              FloatingActionButton(
                onPressed: () {
                  get.value--;
                },
                tooltip: 'Decrease',
                child: const Icon(Icons.remove),
              )
            ],
          ),
        ),
      ),
    );
  }
}
