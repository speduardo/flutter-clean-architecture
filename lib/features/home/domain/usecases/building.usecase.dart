import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/ibuilding.repository.dart';

class BuildingUseCase {

  IBuildingRepository repository;
  //List<BuildingEntity> lista;

  BuildingUseCase({IBuildingRepository repository}) {
    this.repository = repository;
  }

  Future<void> save(BuildingModel model) async {
    this.repository.save(model);
  }

  Future<List<BuildingModel>> getAll() async {
    return await this.repository.getAll();
  }

}