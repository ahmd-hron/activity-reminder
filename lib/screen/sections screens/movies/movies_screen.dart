import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  static const String routeName = '/sections-movies';
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        centerTitle: true,
      ),
    );
  }
}
