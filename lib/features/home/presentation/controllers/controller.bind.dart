import 'package:fluttercleanarchitecture/features/home/data/datasources/building.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/datasources/category.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/category.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/ibuilding.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/building.usecase.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/category.usecase.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/building.controller.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/category.controller.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/home.controller.dart';
import 'package:get/get.dart';

class ControllerBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(BuildingUseCase(repository: BuildingRepository(dataSource: BuildingDataSource()))));
    Get.lazyPut<BuildingController>(() => BuildingController(BuildingUseCase(repository: BuildingRepository(dataSource: BuildingDataSource()))));
    Get.lazyPut<CategoryController>(() => CategoryController(CategoryUseCase(repository: CategoryRepository(dataSource: CategoryDataSource()))));
  }

  /*String call<SampleBind>() {
    return 'boa';
  }*/
}
