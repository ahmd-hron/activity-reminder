import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:seriese_reminders/business_logic/models/games_toplay.dart';

class GamesProvider with ChangeNotifier {
  List<GameToPlay> _games = [];

  List<GameToPlay> get games => [..._games];

  Future<void> getGames() async {}
  Future<void> addGame() async {}

  Future<void> editeGame() async {}
  Future<void> deleteGame(String id) async {}
  Future<void> clearAll() async {
    _games = [];
  }
}
