import 'package:fluttercleanarchitecture/features/reminder/domain/entities/reminder.entity.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/repositories/reminder.repository.dart';

class GetReminder {
  final IReminderRepository repository;

  GetReminder(this.repository);

  Future<Reminder> call(int id) async {
    return await repository.getReminder(id);
  }
}