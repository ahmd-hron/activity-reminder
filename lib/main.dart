import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriese_reminders/business_logic/providers/games_provider.dart';
import 'package:seriese_reminders/business_logic/providers/section_provider.dart';
import 'package:seriese_reminders/business_logic/providers/theme_provider.dart';
import 'package:seriese_reminders/ui/screen/home/home_screen.dart';
import 'package:seriese_reminders/ui/screen/loading/loading_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/books/books_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/favorites/favorites_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/gaming/gaming_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/hobbies/hobbies_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/learn/learn_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/movies/movies_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/series/series_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/todo/todo_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/work/work_screen.dart';
import 'package:seriese_reminders/business_logic/util/size_config.dart';

void main(List<String> args) {
  runApp(const SeriesApp());
}

class SeriesApp extends StatelessWidget {
  const SeriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => SectionsProvider()),
        ChangeNotifierProvider(create: (ctx) => GamesProvider()),
        ChangeNotifierProvider(create: (ctx) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(
          theme: value.appTheme,
          home: const HomeScreen(),
          debugShowCheckedModeBanner: false,
          routes: {
            GamingScreen.routeName: (ctx) => const GamingScreen(),
            MoviesScreen.routeName: (ctx) => const MoviesScreen(),
            SeriesScreen.routeName: (ctx) => const SeriesScreen(),
            BooksScreen.routeName: (ctx) => const BooksScreen(),
            FavoritesScreen.routeName: (ctx) => const FavoritesScreen(),
            HobbiesScreen.routeName: (ctx) => const HobbiesScreen(),
            LearnScreen.routeName: (ctx) => const LearnScreen(),
            TodoScreen.routeName: (ctx) => const TodoScreen(),
            WorkScreen.routeName: (ctx) => const WorkScreen(),
          },
        ),
      ),
    );
  }
  /*home 
   FutureBuilder(
          future: SizeConfig.instance.init(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return const LoadingScreen();
            } else {
              return const HomeScreen();
            }
          },
        ),*/
}
