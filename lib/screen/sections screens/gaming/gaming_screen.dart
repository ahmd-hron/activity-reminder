import 'package:flutter/material.dart';

class GamingScreen extends StatelessWidget {
  static const routeName = '/sections-gamging';
  const GamingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gameing'),
        centerTitle: true,
      ),
    );
  }
}
