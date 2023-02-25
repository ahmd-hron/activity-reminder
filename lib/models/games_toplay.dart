import 'package:seriese_reminders/core/enums/game_type.dart';
import 'package:seriese_reminders/core/game_network_type.dart';
import 'package:seriese_reminders/models/todo.dart';

class GameToPlay extends ThingsTodo {
  String? suggesstedBy;
  GameNetworkType networkType;
  GameType gameType;

  GameToPlay({
    required this.networkType,
    required this.gameType,
    required super.thingType,
  });
}
