import 'package:seriese_reminders/business_logic/core/enums/saveable.dart';
import 'package:seriese_reminders/business_logic/core/enums/todo_type.dart';

class ThingsTodo implements Savable {
  @override
  int id = 0;
  String? filePath, title, description, recommendedBy;
  ThigsTodoType thingType = ThigsTodoType.game;

  ThingsTodo({
    this.id = 0,
    this.description,
    this.filePath,
    this.recommendedBy,
    this.title,
    required this.thingType,
  });

  @override
  void save() {}
  @override
  void load() {}

  @override
  String _tableName = '';

  @override
  String get tableName => _tableName;

  @override
  Map<String, dynamic> toDataBase() {
    return {};
  }

  @override
  fromDataBase() {
    throw UnimplementedError();
  }
}
