import 'package:seriese_reminders/services/user_preferences/user_preference_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesServiceImp extends UserPreferencesService {
  @override
  Future readData(String key) async {
    final instance = await SharedPreferences.getInstance();
    instance.get(key);
  }

  @override
  Future<void> saveData(value, String key) async {
    switch (value.runtimeType) {
      case String:
        _saveString(value: value, key: key);
        break;
      case int:
        _saveInt(value: value, key: key);
        break;
      case bool:
        _saveBool(value: value, key: key);
        break;
      case double:
        _saveDouble(value: value, key: key);
        break;
      default:
        print('tried saving ${value.runtimeType}}');
        break;
    }
  }

  Future<void> _saveString({required String value, required String key}) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString(key, value);
  }

  Future<void> _saveInt({required int value, required String key}) async {
    final instance = await SharedPreferences.getInstance();
    instance.setInt(key, value);
  }

  Future<void> _saveDouble({required double value, required String key}) async {
    final instance = await SharedPreferences.getInstance();
    instance.setDouble(key, value);
  }

  Future<void> _saveBool({required bool value, required String key}) async {
    final instance = await SharedPreferences.getInstance();
    instance.setBool(key, value);
  }
}
