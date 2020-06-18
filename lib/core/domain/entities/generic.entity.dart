import 'package:get/get.dart';

class GenericEntity {
  final _id = 0.obs;

  GenericEntity({id});

  int get id => _id.value;
  set id(int value) => _id.value = value;
}