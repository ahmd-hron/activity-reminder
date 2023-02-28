import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  static const String routeName = '/sections-learn';
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
        centerTitle: true,
      ),
    );
  }
}
