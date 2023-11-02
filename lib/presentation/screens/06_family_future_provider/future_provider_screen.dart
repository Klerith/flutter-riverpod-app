import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/future_providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  late int pokemonId;

  @override
  Widget build(BuildContext context) {
    pokemonId = ref.watch(pokemonIdProvider);
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon id: $pokemonId'),
        ),
        body: Center(
          child: pokemonAsync.when(
            data: (data) => Text(data),
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text('$error'),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'btn-1',
              child: const Icon(Icons.exposure_minus_1),
              onPressed: () {
                // if ( pokemonId <= 1 ) return;
                // pokemonId--;
                // setState(() {});
                ref.read(pokemonIdProvider.notifier).prevPokemon();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                // pokemonId++;
                // setState(() {});
                ref.read(pokemonIdProvider.notifier).nextPokemon();
              },
            ),
          ],
        ));
  }
}
