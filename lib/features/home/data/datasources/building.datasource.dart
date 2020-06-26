import 'package:fluttercleanarchitecture/core/domain/repositories/generic.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hive/hive.dart';

class BuildingDataSource implements IGenericDataSource<BuildingModel> {
  final HasuraConnect _hasuraConnect;

  final String boxName = 'Building';
  Box<BuildingModel> _box;

  BuildingDataSource(this._hasuraConnect);

  @override
  Future<Box<BuildingModel>> get box async {
    _box = await Hive.openBox<BuildingModel>(this.boxName);
    return _box;
  }

  @override
  Future<void> save(BuildingModel model) async {
    (await box).add(model);
  }

  @override
  Future<void> delete(BuildingModel model) async {
    (await box).delete(model.key);
  }

  @override
  Stream<List<BuildingModel>> getAll() {
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

    return snapshot.map((data) => BuildingModel.fromJsonList(data['data']['categories']));
  }

}
