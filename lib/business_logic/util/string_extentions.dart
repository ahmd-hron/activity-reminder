extension CustomString on String {
  String get captlaize {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
