import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';

abstract class IGenericRepository<T extends GenericModel> {

  Future<void> save(T model);

  Future<void> delete(T model);

  Future<List<T>> getAll();

}