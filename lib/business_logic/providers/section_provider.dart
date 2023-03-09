import 'dart:math' show Random;
import 'package:flutter/cupertino.dart';
import 'package:seriese_reminders/business_logic/core/static/app_sections.dart';
import 'package:seriese_reminders/business_logic/models/section.dart';

class SectionsProvider with ChangeNotifier {
  final List<Section> _allSections = appSections;
  final List<Section> _sections = [];

  List<Section> get sections {
    // if (_sections.isEmpty) _setRandomSections();
    return [..._allSections];
  }

  List<Section> get allSections {
    return [...appSections];
  }

  void _setRandomSections() {
    for (var i = 0; i < 4; i++) {
      _addRandomSection();
    }
  }

  void _addRandomSection() {
    int j = Random().nextInt(appSections.length);
    if (_sections.contains(appSections[j])) {
      _addRandomSection();
    }
    if (!_sections.contains(appSections[j])) _sections.add(appSections[j]);
  }
}
