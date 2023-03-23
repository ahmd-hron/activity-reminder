import 'package:seriese_reminders/services/user_preferences/user_preference_service.dart';

class MockUserPreferences extends UserPreferencesService {
  @override
  Future readData(String key) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return dummyData[key];
  }

  @override
  Future<void> saveData(value, String key) async {
    await Future.delayed(const Duration(milliseconds: 300));
    dummyData[key] = value;
  }

  Map<String, dynamic> get dummyData {
    return {};
  }
}
