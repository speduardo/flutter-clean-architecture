import 'package:fluttercleanarchitecture/core/database/database.helper.dart';
import 'package:fluttercleanarchitecture/features/reminder/data/models/reminder.model.dart';
import 'package:sqflite/sqflite.dart';

abstract class IReminderDataSource {

  Future<ReminderModel> getReminder(int id);
}

class ReminderDataSource implements IReminderDataSource {

  @override
  Future<ReminderModel> getReminder(int id) async {
    Database database = await DatabaseHelper().database;
    List<Map> maps = await database.query('reminder',
      columns: ['id', 'title', 'description'],
      where: 'id = ?',
      whereArgs: [id]
    );

    if(maps.length > 0) {
      return ReminderModel.fromJson(maps.first);
    } else {
      return null;
    }
  }

}