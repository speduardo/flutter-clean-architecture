import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
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

  CategoryModel({
    this.name,
    this.description,
    this.image,
  });

}
