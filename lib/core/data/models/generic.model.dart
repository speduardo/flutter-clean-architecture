import 'package:hive/hive.dart';

class GenericModel extends HiveObject {

  @HiveField(0)
  String id;

  GenericModel(String id);

}