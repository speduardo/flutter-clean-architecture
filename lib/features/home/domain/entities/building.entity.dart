import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/category.entity.dart';
import 'package:get/get.dart';
import 'package:fluttercleanarchitecture/core/domain/entities/generic.entity.dart';

class BuildingEntity extends GenericEntity {
  final _name = ''.obs;
  final _description = ''.obs;
  final _image = ''.obs;
  final _categoryEntity = CategoryEntity().obs;

  BuildingEntity({name, description, image, categoryEntity});

  String get name => _name.value;
  set name(String value) => _name.value = value;

  String get description => _description.value;
  set description(String value) => _description.value = value;

  String get image => _image.value;
  set image(String value) => _image.value = value;

  CategoryEntity get categoryEntity => _categoryEntity.value;
  set categoryEntity(CategoryEntity value) => _categoryEntity.value = value;

  BuildingModel toModel() => BuildingModel(
      name: this.name,
      description: this.description,
      image: this.image,
      categoryModel: this.categoryEntity != null ? this.categoryEntity.toModel() : null,
    );

}