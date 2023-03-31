import 'package:flutter/material.dart';


class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: const Center(
        child: Text('Fernando Herrera'),
      ),
    );
  }
}