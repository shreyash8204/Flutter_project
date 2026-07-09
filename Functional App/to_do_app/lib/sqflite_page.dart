import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase{
  Future<Database> createDB() async{
    Database db = await openDatabase(
      join(await getDatabasesPath(), "TodoDB.db"),
      version: 1,
      onCreate: (db, version) {
        db.execute('''
            CREATE TABLE Todo(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            date TEXT
            )
        ''');
      },
    );
      return db;
  }
  // GET DATA
  Future<List<Map>> getTodoItems() async{
      Database localDB = await createDB();
      List<Map> list = await localDB.query("Todo");
      return list;
  }

  // ADD DATA
  void insertTodoItem(Map<String, dynamic> obj) async {
    Database localDB = await createDB();
    await localDB.insert(
      "Todo",
      obj,
      conflictAlgorithm: ConflictAlgorithm.replace, 
      );
  }

  // UPDATE DATA
  Future<void> updateTodoItem(Map<String, dynamic> obj) async{
    Database localDB = await createDB();
    await localDB.update(
      "Todo",
        obj, 
        where: "id=?", whereArgs: [obj['id']]);
  }

  // DELETE DATA
  Future<void> deleteTodoItem(int cardIndex) async{
    Database db = await createDB();
    await db.delete(
      "Todo",
      where: "id=?",
      whereArgs: [cardIndex],
    );
  }
}

