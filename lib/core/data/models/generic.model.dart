import 'package:hive/hive.dart';

class GenericModel extends HiveObject {

  @HiveField(0)
  int id;

  GenericModel({this.id});

}