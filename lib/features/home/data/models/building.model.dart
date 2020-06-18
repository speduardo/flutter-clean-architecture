import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
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
  });

}
