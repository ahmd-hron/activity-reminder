import 'package:flutter/material.dart' show IconData, Icons;
import 'package:flutter/foundation.dart' show ChangeNotifier;

class Section with ChangeNotifier {
  final int id;
  final String title;
  final String shortDescription;
  final String imageUrl;
  final String routeName;

  final IconData icon;

  Section({
    required this.id,
    required this.imageUrl,
    required this.shortDescription,
    required this.title,
    required this.routeName,
    required this.icon,
  });
}
