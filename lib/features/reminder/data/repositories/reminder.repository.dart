import 'package:flutter/foundation.dart';
import 'package:fluttercleanarchitecture/features/reminder/data/datasources/reminder.datasource.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/entities/reminder.entity.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/repositories/reminder.repository.dart';

class ReminderRepository implements IReminderRepository {
  final ReminderDataSource reminderDataSource;

  ReminderRepository({
    @required this.reminderDataSource,
  });

  @override
  Future<Reminder> getReminder(int id) async {
    return await reminderDataSource.getReminder(id);
  }
  
}