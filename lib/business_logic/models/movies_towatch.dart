import 'package:seriese_reminders/business_logic/models/todo.dart';

class MoviesToWatch extends ThingsTodo {
  String? movieType;
  MoviesToWatch({required super.thingType});

  @override
  void save() {
    super.save();
  }

  @override
  void load() {
    super.load();
  }

  @override
  MoviesToWatch fromDataBase() {
    return super.fromDataBase();
  }

  @override
  Map<String, dynamic> toDataBase() {
    return {};
  }
}
