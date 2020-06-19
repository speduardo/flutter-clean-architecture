import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/category.entity.dart';
import 'package:hive/hive.dart';

part 'category.model.g.dart';

@HiveType(typeId: 2)
class CategoryModel extends GenericModel {

  @HiveField(1)
  String name;

  @HiveField(2)
  String description;

  @HiveField(3)
  String image;

  @HiveField(4)
  String icon;

  CategoryModel({
    this.name,
    this.description,
    this.image,
    this.icon,
  });

  CategoryEntity toEntity() {
    CategoryEntity entity = CategoryEntity();
    entity.name = this.name;
    entity.description = this.name;
    entity.icon = this.icon;
    entity.image = this.image;

    return entity;
  }

}
