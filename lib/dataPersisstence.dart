// database_helper.dart

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dataModel.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'predictions';

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    return openDatabase(
      join(path, 'predictions.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE $tableName(id INTEGER PRIMARY KEY AUTOINCREMENT, label TEXT, timestamp TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertPrediction(Prediction prediction) async {
    final db = await database;
    await db.insert(tableName, prediction.toMap());
  }

  static Future<List<Prediction>> getPredictions() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(tableName);
    return List.generate(maps.length, (i) {
      return Prediction(
        maps[i]['label'],
        DateTime.parse(maps[i]['timestamp']),
      );
    });
  }


}
