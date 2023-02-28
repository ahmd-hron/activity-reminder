import 'package:flutter/material.dart';
import 'package:seriese_reminders/screen/sections%20screens/gaming/components/game_form.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const GameForm())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
