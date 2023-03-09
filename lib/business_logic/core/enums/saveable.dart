abstract class Savable<T> {
  int id = 0;
  void save();
  void load();
  Map<String, dynamic> toDataBase();
  T fromDataBase();
  String _tableName = '';
  String get tableName => _tableName;
}
