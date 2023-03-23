import 'package:seriese_reminders/business_logic/core/enums/saveable.dart';
import 'package:seriese_reminders/services/storage/storage_service.dart';

class StorageServiceImp extends StorageService {
  final String _dbName = 'todoList';
  final String _todoTable = 'todos';

  @override
  String get todoTable => _todoTable;

  @override
  String get dbName => _dbName;

  @override
  Future<void> saveItem(Savable item) async {
    final db = await openeDatabase;
    db.insert(item.tableName, item.toDataBase());
    print('insernted ${item.runtimeType} successfully');
  }

  @override
  Future<void> saveList(List<Savable> items) async {
    final db = await openeDatabase;
    final batch = db.batch();
    for (var item in items) {
      batch.insert(item.tableName, item.toDataBase());
    }
    await batch.commit();
    print('inserted list of ${items.runtimeType}s');
  }

  @override
  Future<List<Map<String, dynamic>>> readItems(Savable savable) async {
    final db = await openeDatabase;
    final items = await db.query(savable.tableName);
    return items;
  }

  @override
  Future<void> deleteItem(Savable item) async {
    final db = await openeDatabase;
    db.delete(item.tableName, where: 'columnId = id', whereArgs: [item.id]);
  }

  @override
  Future<void> cleanTable(String tableName) async {
    final db = await openeDatabase;
    db.delete(tableName);
  }
}
