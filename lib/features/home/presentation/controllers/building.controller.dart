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
        return populateEntity(value[index]);
      });

      lista.addAllIf(_list != null, _list);
    });

  }

  save(BuildingEntity entity) {
    BuildingModel buildingModel = populateModel(entity);

    this.buildingUseCase.save(buildingModel).then((value) {
      lista.add(entity);
    });

  }

  BuildingModel populateModel(BuildingEntity entity) {
    CategoryModel categoryModel = CategoryModel(
      name: entity.categoryEntity.name,
      description: entity.categoryEntity.description,
      image: entity.categoryEntity.image,
    );

    BuildingModel buildingModel = BuildingModel(
      name: entity.name,
      description: entity.description,
      image: entity.image,
      categoryModel: categoryModel,
    );

    return buildingModel;
  }

  BuildingEntity populateEntity(BuildingModel model) {
    CategoryEntity categoryEntity = CategoryEntity();
    categoryEntity.name = model.categoryModel.name;
    categoryEntity.description = model.categoryModel.name;
    categoryEntity.image = model.categoryModel.image;

    BuildingEntity entity = BuildingEntity();
    entity.name = model.name;
    entity.description = model.description;
    entity.image = model.image;
    entity.categoryEntity = categoryEntity;

    return entity;
  }

}