import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/datasources/category.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/icategory.repository.dart';

class CategoryRepository implements ICategoryRepository {

  final CategoryDataSource dataSource;

  CategoryRepository({this.dataSource});

  @override
  Future<void> save(GenericModel model) {
    this.dataSource.save(model);
  }

  @override
  Future<void> delete(GenericModel model) {
    this.dataSource.delete(model);
  }

  @override
  Stream<List<GenericModel>> getAll() {
    return this.dataSource.getAll();
  }

  Future<List<CategoryModel>> getCategories() {
    return this.dataSource.getCategories();
  }

}