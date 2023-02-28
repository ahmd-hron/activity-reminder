import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static const String routeName = '/sections-favorites';
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        centerTitle: true,
      ),
    );
  }
}
