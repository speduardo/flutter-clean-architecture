import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  static DatabaseHelper _databaseHelper;
  static Database _database;

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if(_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future<Database> get database async {
    if(_database == null){
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'api-teste.db';

    var db = await openDatabase(path, version: 1, onCreate: _createDB);
    return db;
  }

  void _createDB(Database db, int nreVersion) async {
    await db.execute('CREATE TABLE reminder(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT);');
    await db.execute('INSERT INTO reminder(id, title, description) VALUES(1, "Title", "Description");');
  }
}