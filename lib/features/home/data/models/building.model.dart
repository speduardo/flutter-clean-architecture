import 'dart:convert';

import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';
import 'package:hive/hive.dart';

part 'building.model.g.dart';

@HiveType(typeId: 1)
class BuildingModel extends GenericModel {

  @HiveField(1)
  String name;

  @HiveField(2)
  String description;

  @HiveField(3)
  String image;

  @HiveField(4)
  String address;

  @HiveField(5)
  String addressNumber;

  @HiveField(6)
  String addressCode;

  @HiveField(7)
  String city;

  @HiveField(8)
  String state;

  @HiveField(9)
  String addressComplement;

  @HiveField(10)
  String neighborhood;

  @HiveField(11)
  String phone;

  @HiveField(12)
  CategoryModel categoryModel;

  BuildingModel({
    id,
    this.name,
    this.description,
    this.image,
    this.address,
    this.addressNumber,
    this.addressCode,
    this.addressComplement,
    this.neighborhood,
    this.city,
    this.state,
    this.phone,
    this.categoryModel,
  }) : super(id);

  BuildingEntity toEntity() {
    BuildingEntity entity = BuildingEntity();
    entity.name = this.name;
    entity.description = this.description;
    entity.image = this.image;
    entity.categoryEntity = this.categoryModel != null ? this.categoryModel.toEntity() : null;

    return entity;
  }

  factory BuildingModel.fromJson(String str) => BuildingModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BuildingModel.fromMap(Map<String, dynamic> json) => BuildingModel(
    name: json['name'],
    description: json['description'],
    image: json['image'],
    address: json['address'],
    addressNumber: json['address_number'],
    addressCode: json['address_code'],
    addressComplement: json['address_complement'],
    neighborhood: json['district_id'],
    phone: json['phone'],
    categoryModel: json['category_id'],
  );

  Map<String, dynamic> toMap() => {
    'name': name,
    'description': description,
    'image': image,
    'address': address,
    'addressNumber': addressNumber,
    'addressCode': addressCode,
    'addressComplement': addressComplement,
    'neighborhood': neighborhood,
    'phone': phone,
    'categoryModel': categoryModel,
  };

  static List<BuildingModel> fromJsonList(List list) {
    if(list.isEmpty) return null;
    return list.map<BuildingModel>((item) => BuildingModel.fromMap(item)).toList();
  }

}
