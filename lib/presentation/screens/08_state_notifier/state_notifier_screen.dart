import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';


class StateNotifierScreen extends ConsumerWidget {
  const StateNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider'),
      ),
      body: const _TodosView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: () {
          ref.read(todosStateNotifierProvider.notifier)
            .addTodo();
        },
      ),
    );
  }
}


class _TodosView extends ConsumerWidget {
  const _TodosView();

  @override
  Widget build(BuildContext context, WidgetRef ref ) {

    final currentFilter = ref.watch(todoFilterProvider);
    // final todos = ref.watch(todosStateNotifierProvider);
    final todos = ref.watch(filteredGuestProvider);

    return Column(
      children: [
        

        SegmentedButton(
          segments: const[
            ButtonSegment(value: TodoFilter.all, icon: Text('Todos')),
            ButtonSegment(value: TodoFilter.completed, icon: Text('Invitados')),
            ButtonSegment(value: TodoFilter.pending, icon: Text('No invitados')),
          ], 
          selected: <TodoFilter>{ currentFilter },
          onSelectionChanged: (value) {
            ref.read(todoFilterProvider.notifier).state = value.first;
          },
        ),
        const SizedBox( height: 5 ),

        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return SwitchListTile(
                title: Text( todo.description ),
                value: todo.done, 
                onChanged: ( value ) {
                  ref.read( todosStateNotifierProvider.notifier )
                    .toggleTodo( todo.id );
                }
              );
            },
          ),
        )


      ]);
  }
}