import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/entities/reminder.entity.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/repositories/reminder.repository.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/usecases/get_reminder.usecase.dart';
import 'package:mockito/mockito.dart';

class MockReminderRepository extends Mock implements IReminderRepository {}

void main() {
  GetReminder usecase;
  MockReminderRepository repository;

  setUp(() {
    repository = MockReminderRepository();
    usecase = GetReminder(repository);
  });

  final tReminder = Reminder(
    id: 1,
    title: 'Title',
    description: 'Description'
  );

  test('should return an entity reminder', () async {
    // arrange
    when(repository.getReminder(any)).thenAnswer((_) async => tReminder);

    // acts
    final result = await usecase(1);

    //asserts
    expect(result, tReminder);
    verify(repository.getReminder(1));
    verifyNoMoreInteractions(repository);
  });
}