import 'package:flutter/material.dart' show Icons;
import 'package:seriese_reminders/business_logic/models/section.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/books/books_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/favorites/favorites_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/gaming/gaming_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/hobbies/hobbies_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/learn/learn_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/movies/movies_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/series/series_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/todo/todo_screen.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/work/work_screen.dart';

List<Section> get appSections {
  return [
    Section(
        id: 0,
        title: 'Gaming',
        imageUrl:
            'https://media.kasperskycontenthub.com/wp-content/uploads/sites/43/2021/07/01091502/abstract_digital-gamepad-sl-800x450.jpg',
        shortDescription: '',
        icon: Icons.sports_esports_outlined,
        routeName: GamingScreen.routeName),
    Section(
        id: 1,
        title: 'Movies',
        imageUrl:
            'https://www.grandsierraresort.com/hubfs/recreation/Grand-Sierra-Cinema-view-of-auditorium_q085_1920x1080.jpg',
        shortDescription: '',
        routeName: MoviesScreen.routeName,
        icon: Icons.movie_creation_outlined),
    Section(
      id: 2,
      title: 'Series',
      imageUrl:
          'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/YGMUKDZ3C5AXZKVGWZOW4E6SXU.jpg',
      shortDescription: '',
      routeName: SeriesScreen.routeName,
      icon: Icons.tv_rounded,
    ),
    Section(
      id: 3,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/08/28/12/46/checklist-911841_1280.png',
      title: 'Todo',
      shortDescription: '',
      routeName: TodoScreen.routeName,
      icon: Icons.checklist_outlined,
    ),
    Section(
      id: 4,
      title: 'Learn',
      shortDescription: '',
      imageUrl:
          'https://prod-discovery.edx-cdn.org/media/course/image/f42bce09-2533-48fb-a9c4-8053aedf941b-798c36769d88.small.png',
      routeName: LearnScreen.routeName,
      icon: Icons.edit_note_sharp,
    ),
    Section(
      id: 5,
      title: 'Work',
      shortDescription: '',
      imageUrl:
          'https://images-stylist.s3-eu-west-1.amazonaws.com/app/uploads/2021/01/25162104/how-to-switch-off-from-work-when-working-from-home.jpg',
      routeName: WorkScreen.routeName,
      icon: Icons.work_outline_rounded,
    ),
    Section(
      id: 6,
      title: 'Hobbies',
      shortDescription: '',
      imageUrl: 'https://silesion.pl/wp-content/uploads/2021/08/hobby.jpg',
      routeName: HobbiesScreen.routeName,
      icon: Icons.sports_basketball_sharp,
    ),
    Section(
      id: 6,
      title: 'Books',
      shortDescription: '',
      imageUrl:
          'https://sacajaweaaudubon.org/wp-content/uploads/2020/06/a-lot-of-books-clipart-6.png',
      routeName: BooksScreen.routeName,
      icon: Icons.menu_book_outlined,
    ),
    Section(
      id: 6,
      title: 'Favorites',
      shortDescription: '',
      imageUrl:
          'https://cdni.iconscout.com/illustration/premium/thumb/bookmarking-favorite-website-7210554-5862047.png',
      routeName: FavoritesScreen.routeName,
      icon: Icons.star_border_outlined,
    ),
  ];
}
