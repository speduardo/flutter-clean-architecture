import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/core/themes/app.theme.dart';
import 'package:fluttercleanarchitecture/features/home/data/datasources/building.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/building.usecase.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/home.bind.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/detail.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/guia.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/guiadetail.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/hero.view.dart';
import 'package:fluttercleanarchitecture/features/reminder/presentation/views/reminder.view.dart';
import 'package:get/get.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/home.view.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> _initialiseHive() async {
  final Directory appDocDirectory = await getApplicationDocumentsDirectory();
  final path = appDocDirectory.path;

  Hive.init(path);
  Hive.registerAdapter(BuildingModelAdapter());
  Hive.registerAdapter(CategoryModelAdapter());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initialiseHive();

  //EstabelecimentoDataSource dataSource = EstabelecimentoDataSource();
  //EstabelecimentoUseCase useCase = EstabelecimentoUseCase(repository: EstabelecimentoRepository(dataSource: dataSource));
  /*useCase.save(EstabelecimentoEntity(
      nome: 'Disk Pizza',
      descricao: 'Melhor Pizzaria da cidade',
      logo: 'assets/images/diskpizza-logo.jpg')
  );*/
  //List<EstabelecimentoEntity> listaEntities = await useCase.getAll();
  //print('Lista Estabelecimentos: ${listaEntities}');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: appThemeData[AppTheme.WhiteLight],
      namedRoutes: {
        '/': GetRoute(page: HomeView(), bindings: [HomeBind()]),
        '/destaque': GetRoute(page: DetailView()),
      },
      //home: HomeView(),
    );
    
  }
}
