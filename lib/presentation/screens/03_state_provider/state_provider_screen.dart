import 'package:flutter/material.dart';


class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1,),

            IconButton(
              // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
              icon: const Icon( Icons.dark_mode_outlined, size: 100 ),
              onPressed: () {},
            ),

            const Text('Fernando Herrera', style: TextStyle(fontSize: 25 )),
            
            const Spacer( flex: 2 ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon( Icons.refresh_rounded ),
        onPressed: () {},
      ),
    );
  }
}