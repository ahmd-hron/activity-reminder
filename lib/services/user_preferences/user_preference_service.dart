import 'package:shared_preferences/shared_preferences.dart';

abstract class UserPreferencesService {
  Future<void> saveData(dynamic value, String key);
  Future<dynamic> readData(String key);
}
