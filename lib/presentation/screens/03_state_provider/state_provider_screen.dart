import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          IconButton(
            // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
            icon: const Icon(Icons.dark_mode_outlined, size: 100),
            onPressed: () {},
          ),
          const Text('Fernando Herrera', style: TextStyle(fontSize: 25)),
          TextButton.icon(
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
              onPressed: () {
                ref.read(counterProvider.notifier).increaseByOne();
              },
              // Riverpod Consumer
              label: Consumer(builder: (context, ref, _) {
                final counter = ref.watch(counterProvider);
                return Text('$counter', style: TextStyle(fontSize: 100));
              })),
          // Fin riverpod Consumer
          const Spacer(flex: 2),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {},
      ),
    );
  }
}
