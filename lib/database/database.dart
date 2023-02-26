import 'package:seriese_reminders/core/enums/saveable.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DB {
  DB._();
  static final DB instance = DB._();

  static const String _dbName = 'todoList';
  static const String _todoTable = 'todos';

  Future<sql.Database> get _openeDatabase async {
    final rawPath = await sql.getDatabasesPath();
    final dbPath = path.join(rawPath, _dbName);
    return sql.openDatabase(
      dbPath,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE $_todoTable (id INTEGER PRIMARY KEY,TEXT filePath,TEXT title,TEXT description,TEXT recommendedBy,TEXT type)');
      },
      version: 1,
    );
  }

  Future<void> addItem(Savable item) async {
    final db = await _openeDatabase;
    db.insert(item.tableName, item.toDataBase());
    print('insernted ${item.runtimeType} successfully');
  }

  Future<void> addList(List<Savable> items) async {
    final db = await _openeDatabase;
    final batch = db.batch();
    for (var item in items) {
      batch.insert(item.tableName, item.toDataBase());
    }
    await batch.commit();
    print('inserted list of ${items.runtimeType}s');
  }

  Future<List<Map<String, dynamic>>> readItems(Savable savable) async {
    final db = await _openeDatabase;
    final items = await db.query(savable.tableName);
    return items;
  }

  Future<void> cleanTable(String tableName) async {
    final db = await _openeDatabase;
    db.delete(tableName);
  }

  Future<void> deleteItem(Savable item) async {
    final db = await _openeDatabase;
    db.delete(item.tableName, where: 'columnId = id', whereArgs: [item.id]);
  }
}
