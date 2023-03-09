import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  static const routeName = '/sections-books';
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
        centerTitle: true,
      ),
    );
  }
}
