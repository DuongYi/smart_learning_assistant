import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ChatDBService {
  static final ChatDBService _instance = ChatDBService._internal();
  factory ChatDBService() => _instance;
  ChatDBService._internal();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'chat_messages.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE chat_messages (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            text TEXT NOT NULL,
            imagePath TEXT,
            isUser INTEGER NOT NULL
          )
        ''');
      },
    );
  }

  Future<int> insertMessage(String text, String? imagePath, bool isUser) async {
    final db = await database;
    return await db.insert('chat_messages', {
      'text': text,
      'imagePath': imagePath,
      'isUser': isUser ? 1 : 0,
    });
  }

  Future<List<Map<String, dynamic>>> getMessages() async {
    final db = await database;
    return await db.query('chat_messages', orderBy: 'id ASC');
  }

  Future<void> clearMessages() async {
    final db = await database;
    await db.delete('chat_messages');
  }
}
