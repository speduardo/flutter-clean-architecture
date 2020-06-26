import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/icategory.repository.dart';

class CategoryUseCase<T extends CategoryModel> {

  ICategoryRepository repository;

  CategoryUseCase({ICategoryRepository repository}) {
    this.repository = repository;
  }

  Future<void> save(T model) async {
    this.repository.save(model);
  }

  Stream<List<T>> getAll() {
    return this.repository.getAll();
  }

  Future<void> delete(T model) async {
    this.repository.delete(model);
  }

}