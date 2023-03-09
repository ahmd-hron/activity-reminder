import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  static const String routeName = '/sections-todo';
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        centerTitle: true,
      ),
    );
  }
}
