import 'package:fluttercleanarchitecture/features/home/data/datasources/building.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/ibuilding.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/building.usecase.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/building.controller.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/home.controller.dart';
import 'package:get/get.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(BuildingUseCase(repository: BuildingRepository(dataSource: BuildingDataSource()))));
    Get.lazyPut<BuildingController>(() => BuildingController(BuildingUseCase(repository: BuildingRepository(dataSource: BuildingDataSource()))));
  }

  /*String call<SampleBind>() {
    return 'boa';
  }*/
}
