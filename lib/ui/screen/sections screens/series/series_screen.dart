import 'package:flutter/material.dart';

class SeriesScreen extends StatelessWidget {
  static const String routeName = '/sections-series';
  const SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Series'),
        centerTitle: true,
      ),
    );
  }
}
