import 'package:fluttercleanarchitecture/features/reminder/domain/entities/reminder.entity.dart';

abstract class IReminderRepository {
  Future<Reminder> getReminder(int id);
}