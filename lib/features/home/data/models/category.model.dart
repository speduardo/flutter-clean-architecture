import 'dart:convert';

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
    id,
    this.name,
    this.description,
    this.image,
    this.icon,
  }) : super(id);

  CategoryEntity toEntity() {
    CategoryEntity entity = CategoryEntity();
    entity.name = this.name;
    entity.description = this.name;
    entity.icon = this.icon;
    entity.image = this.image;

    return entity;
  }

  factory CategoryModel.fromJson(String str) => CategoryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
    id: json['id'],
    name: json['name'],
    description: json['description'],
    icon: json['icon'],
    image: json['image'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'description': description,
    'icon': icon,
    'image': image,
  };

  static List<CategoryModel> fromJsonList(List list) {
    if(list.isEmpty) return null;
    return list.map<CategoryModel>((item) => CategoryModel.fromMap(item)).toList();
  }

}
