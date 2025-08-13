import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FreeAssistantDBService {
  static final FreeAssistantDBService _instance =
      FreeAssistantDBService._internal();

  factory FreeAssistantDBService() => _instance;
  FreeAssistantDBService._internal();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'free_assistant.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE free_assistant (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            text TEXT NOT NULL,
            isUser INTEGER NOT NULL
          )
        ''');
      },
    );
  }

  Future<int> insertMessage(String text, bool isUser) async {
    final db = await database;
    return await db.insert('free_assistant', {
      'text': text,
      'isUser': isUser ? 1 : 0,
    });
  }

  Future<List<Map<String, dynamic>>> getMessages() async {
    final db = await database;
    return await db.query('free_assistant', orderBy: 'id ASC');
  }

  Future<void> clearMessages() async {
    final db = await database;
    await db.delete('free_assistant');
  }
}
