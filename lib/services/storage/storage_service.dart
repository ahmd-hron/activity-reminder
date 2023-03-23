import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:seriese_reminders/business_logic/core/enums/saveable.dart';

abstract class StorageService {
  String get dbName;
  String get todoTable;

  Future<sql.Database> get openeDatabase async {
    final rawPath = await sql.getDatabasesPath();
    final dbPath = path.join(rawPath, dbName);
    return sql.openDatabase(
      dbPath,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE $todoTable (id INTEGER PRIMARY KEY,TEXT filePath,TEXT title,TEXT description,TEXT recommendedBy,TEXT type)');
      },
      version: 1,
    );
  }

  Future<void> saveItem(Savable item);

  Future<void> saveList(List<Savable> items);

  Future<List<Map<String, dynamic>>> readItems(Savable savable);

  Future<void> cleanTable(String tableName);

  Future<void> deleteItem(Savable item);
}
