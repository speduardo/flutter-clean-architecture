import 'package:fluttercleanarchitecture/core/domain/repositories/generic.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hive/hive.dart';

class CategoryDataSource implements IGenericDataSource<CategoryModel> {
  final HasuraConnect _hasuraConnect;

  final String boxName = 'Category';
  Box<CategoryModel> _box;

  CategoryDataSource(this._hasuraConnect);

  @override
  Future<Box<CategoryModel>> get box async {
    _box = await Hive.openBox<CategoryModel>(this.boxName);
    return _box;
  }

  @override
  Future<void> save(CategoryModel model) async {
    (await box).add(model);
  }

  @override
  Future<void> delete(CategoryModel model) async {
    (await box).delete(model.key);
  }

  @override
  Stream<List<CategoryModel>> getAll() {
    var query = '''
    subscription MySubscription {
      categories(order_by: {name: asc}) {
        id
        name
        description
      }
    }
    ''';

    var snapshot = _hasuraConnect.subscription(query);

    return snapshot.map((data) => CategoryModel.fromJsonList(data['data']['categories']));
  }

  Future<List<CategoryModel>> getCategories() async {
    var query = '''
    query MyQuery {
      categories(order_by: {name: asc}) {
        id
        name
        description
      }
    }
    ''';
    var result = await _hasuraConnect.query(query);
    List<CategoryModel> lista = CategoryModel.fromJsonList(result['data']['categories']);
    return lista;
  }
}
