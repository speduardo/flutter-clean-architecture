import 'package:get/get.dart';
import 'package:fluttercleanarchitecture/core/domain/entities/generic.entity.dart';

class CategoryEntity extends GenericEntity {
  final _name = ''.obs;
  final _description = ''.obs;
  final _image = ''.obs;

  CategoryEntity({name, description, image});

  String get name => _name.value;
  set name(String value) => _name.value = value;

  String get description => _description.value;
  set description(String value) => _description.value = value;

  String get image => _image.value;
  set image(String value) => _image.value = value;

}