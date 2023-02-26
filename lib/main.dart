import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriese_reminders/providers/section_provider.dart';
import 'package:seriese_reminders/screen/home/home_screen.dart';
import 'package:seriese_reminders/screen/loading/loading_screen.dart';
import 'package:seriese_reminders/util/size_config.dart';

void main(List<String> args) {
  runApp(const SeriesApp());
}

class SeriesApp extends StatelessWidget {
  const SeriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => SectionsProvider())],
      child: MaterialApp(
          home: FutureBuilder(
        future: SizeConfig.instance.init(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return const LoadingScreen();
          } else {
            return const HomeScreen();
          }
        },
      )),
    );
  }
}
