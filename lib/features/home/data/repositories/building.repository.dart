import 'package:fluttercleanarchitecture/core/data/models/generic.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/datasources/building.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/ibuilding.repository.dart';

class BuildingRepository implements IBuildingRepository {

  final BuildingDataSource dataSource;

  BuildingRepository({this.dataSource});

  @override
  Future<void> save(GenericModel model) {
    this.dataSource.save(model);
  }

  @override
  Future<List<GenericModel>> getAll() async {
    return await this.dataSource.getAll();
  }

}