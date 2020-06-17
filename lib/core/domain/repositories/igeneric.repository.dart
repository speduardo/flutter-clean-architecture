import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';

abstract class IGenericRepository<T extends GenericModel> {

  Future<void> save(T model);

  Future<List<T>> getAll();

}