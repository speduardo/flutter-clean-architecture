import 'package:fluttercleanarchitecture/core/domain/entities/generic.entity.dart';
import 'package:get/get.dart';

class GenericController<T extends GenericEntity> extends RxController {

  T entity;
  ListX<T> _list;

  ListX<T> get list => _list;
  set list(ListX<T> value) => _list = value;

}