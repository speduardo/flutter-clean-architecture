import 'package:hive/hive.dart';

abstract class IGenericDataSource<T extends HiveObject> {

  get box => Hive.openBox<T>('');

  Future<void> save(T newObject);

  Future<void> delete(T objectToDelete);

  Stream<List<T>> getAll();

}