import 'package:flutter/material.dart';


class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider + Providers'),
      ),
      body: const _TodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: () {},
      ),
    );
  }
}


class _TodoView extends StatelessWidget {
  const _TodoView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas a invitar a la fiesta'),
        ),

        SegmentedButton(
          segments: const[
            ButtonSegment(value: 'all', icon: Text('Todos')),
            ButtonSegment(value: 'completed', icon: Text('Invitados')),
            ButtonSegment(value: 'pending', icon: Text('No invitados')),
          ], 
          selected: const <String>{ 'all' },
          onSelectionChanged: (value) {
            
          },
        ),
        const SizedBox( height: 5 ),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SwitchListTile(
                title: const Text('Juan carlos'),
                value: true, 
                onChanged: ( value ) {}
              );
            },
          ),
        )
      ],
    );
  }
}