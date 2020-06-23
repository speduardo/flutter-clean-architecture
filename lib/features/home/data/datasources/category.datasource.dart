import 'package:fluttercleanarchitecture/core/domain/repositories/generic.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:hive/hive.dart';

class CategoryDataSource implements IGenericDataSource<CategoryModel> {
  final String boxName;
  Box<CategoryModel> _box;

  CategoryDataSource({this.boxName='Category'});

  @override
  Future<Box<CategoryModel>> get box async {
    _box = await Hive.openBox<CategoryModel>(this.boxName);
    return _box;
  }

  @override
  Future<void> save(CategoryModel model) async {
    (await box).add(model);
  }

  @override
  Future<void> delete(CategoryModel model) async {
    (await box).delete(model.key);
  }

  @override
  Future<List<CategoryModel>> getAll() async {
    return (await box).values.toList();
  }

}
