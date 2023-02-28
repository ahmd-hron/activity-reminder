import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  static const String routeName = '/sections-work';
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work'),
        centerTitle: true,
      ),
    );
  }
}
