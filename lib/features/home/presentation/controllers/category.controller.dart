import 'package:fluttercleanarchitecture/core/presentation/controller/generic.controller.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/category.entity.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/category.usecase.dart';
import 'package:get/get.dart';

class CategoryController extends GenericController {
  static CategoryController get to => Get.find();

  CategoryUseCase categoryUseCase;

  CategoryController(CategoryUseCase categoryUseCase){
    this.categoryUseCase = categoryUseCase;
    this.list = List<CategoryEntity>().obs;
    this.entity = CategoryEntity();
  }

  getAll() {
    /*this.categoryUseCase.getAll().then((value) {
      List<CategoryEntity> entityList = List.generate(value.length, (index) {
        return value[index].toEntity();
      });

      list.addAllIf(entityList != null, entityList);
    });*/
    Stream<List<CategoryModel>> lista = this.categoryUseCase.getAll();
    return lista;
  }

  save() {
    CategoryModel categoryModel = (this.entity as CategoryEntity).toModel();
    this.categoryUseCase.save(categoryModel).then((value) {
      list.add(entity);
    });

  }

  delete(CategoryEntity entity) {
    this.categoryUseCase.delete(entity.toModel()).then((value) {
      list.remove(entity);
    });
  }

}