import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';

class BuildingUseCase {

  BuildingRepository repository;
  List<BuildingEntity> lista;

  BuildingUseCase({BuildingRepository repository}) {
    this.repository = repository;
  }

  Future<void> save(BuildingModel model) async {
    this.repository.save(model);
  }

  Future<List<BuildingModel>> getAll() async {
    return await this.repository.getAll();
  }

}