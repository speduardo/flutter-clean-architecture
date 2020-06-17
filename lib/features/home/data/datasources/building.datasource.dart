import 'package:fluttercleanarchitecture/core/domain/repositories/generic.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:hive/hive.dart';

class BuildingDataSource implements IGenericDataSource<BuildingModel> {
  final String boxName;
  Box<BuildingModel> _box;

  BuildingDataSource({this.boxName='Building'});

  @override
  Future<Box<BuildingModel>> get box async {
    _box = await Hive.openBox<BuildingModel>(this.boxName);
    return _box;
  }

  @override
  Future<void> save(BuildingModel model) async {
    (await box).add(model);
  }

  @override
  Future<void> delete(BuildingModel model) async {
    (await box).delete(model.key);
  }

  @override
  Future<List<BuildingModel>> getAll() async {
    return (await box).values.toList();
  }

}
