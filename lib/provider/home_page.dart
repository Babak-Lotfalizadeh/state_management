import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter/counter_provider.dart';
import 'home_body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const HomeBody(),
    );
  }
}
