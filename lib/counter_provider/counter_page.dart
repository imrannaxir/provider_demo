import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_demo/counter_provider/provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text(
          'Counter Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(ref.watch(counterProvider).toString()),
      ),
      floatingActionButton: myFloatingActionButton(ref),
    );
  }

  Widget myFloatingActionButton(ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'Increment',
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        FloatingActionButton(
          heroTag: 'Decrement',
          onPressed: () {
            ref.read(counterProvider.notifier).state--;
          },
          child: const Icon(
            Icons.remove,
          ),
        ),
      ],
    );
  }
}
