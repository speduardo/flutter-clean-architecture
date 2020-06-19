import 'package:fluttercleanarchitecture/core/presentation/controller/generic.controller.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/category.entity.dart';
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
      List<BuildingEntity> _list = List.generate(value.length, (index) {
        return value[index].toEntity();
      });

      lista.addAllIf(_list != null, _list);
    });

  }

  save(BuildingEntity entity) {
    BuildingModel buildingModel = entity.toModel();

    this.buildingUseCase.save(buildingModel).then((value) {
      lista.add(entity);
    });

  }

}