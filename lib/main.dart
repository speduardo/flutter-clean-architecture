import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/core/themes/app.theme.dart';
import 'package:fluttercleanarchitecture/features/home/data/datasources/building.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/building.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/category.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/building.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/building.entity.dart';
import 'package:fluttercleanarchitecture/features/home/domain/usecases/building.usecase.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/controller.bind.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/category/category.detailview.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/category/category.formview.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/category/category.listview.dart';
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

  if(!kIsWeb) {
    Hive.init(path);
  }

  Hive.registerAdapter(BuildingModelAdapter());
  Hive.registerAdapter(CategoryModelAdapter());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initialiseHive();

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
        '/': GetRoute(page: HomeView(), bindings: [ControllerBind()]),
        '/destaque': GetRoute(page: DetailView()),
        '/categoriaListView': GetRoute(page: CategoryListView(), bindings: [ControllerBind()]),
        '/categoriaDetailView': GetRoute(page: CategoryDetatilView()),
        '/categoriaFormView': GetRoute(page: CategoryFormView()),
      },
      //home: HomeView(),
    );
    
  }
}
