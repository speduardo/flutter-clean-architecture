import 'package:fluttercleanarchitecture/features/reminder/data/datasources/reminder.datasource.dart';
import 'package:fluttercleanarchitecture/features/reminder/data/repositories/reminder.repository.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/usecases/get_reminder.usecase.dart';
import 'package:get/get.dart';

class ReminderController extends RxController {
  static ReminderController get to => Get.find();

  final id = 0.obs;
  final title = "".obs;
  final description = "".obs;
  //int get sum => count1.value + count2.value;

  ReminderController(){
    ReminderDataSource dataSource = ReminderDataSource();
    ReminderRepository repository = ReminderRepository(reminderDataSource: dataSource);
    GetReminder usecase = GetReminder(repository);
    final result = usecase(1);
  }

}