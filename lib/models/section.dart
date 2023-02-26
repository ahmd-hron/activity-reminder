import 'package:flutter/material.dart' show IconData, Icons;
import 'package:flutter/foundation.dart' show ChangeNotifier;

class Section with ChangeNotifier {
  int id;
  String title;
  String shortDescription;
  String imageUrl;
  IconData icon;

  Section({
    required this.id,
    required this.imageUrl,
    required this.shortDescription,
    required this.title,
    required this.icon,
  });
}
