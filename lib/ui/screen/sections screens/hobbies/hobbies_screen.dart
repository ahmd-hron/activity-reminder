import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  static const String routeName = '/sections-hobbies';
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hobbies'),
        centerTitle: true,
      ),
    );
  }
}
