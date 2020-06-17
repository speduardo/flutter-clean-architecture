import 'package:fluttercleanarchitecture/core/presentation/controller/generic.controller.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/building.usecase.dart';
import 'package:get/get.dart';

class BuildingController extends GenericController {
  static BuildingController get to => Get.find();

  BuildingUseCase buildingUseCase;
  //final ListX<EstabelecimentoEntity> listaEstabelecimento = List<EstabelecimentoEntity>().obs;

  BuildingController(BuildingUseCase buildingUseCase){
    this.buildingUseCase = buildingUseCase;
    this.lista = List<BuildingEntity>().obs;
  }

  getAll() {
    this.buildingUseCase.getAll().then((value) {
      List<BuildingEntity> _lista = List.generate(value.length, (index) {
        BuildingEntity entity = BuildingEntity();
        entity.name = value[index].name;
        entity.description = value[index].description;
        entity.image = value[index].image;

        return entity;
      });

      lista.addAllIf(_lista != null, _lista);
    });

  }

  save(BuildingEntity entity) {
    BuildingModel model = BuildingModel(
      name: entity.name,
      description: entity.description,
      image: entity.image,
    );

    this.buildingUseCase.save(model).then((value) {
      lista.add(entity);
    });

  }

}