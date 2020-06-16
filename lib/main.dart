import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/core/themes/app.theme.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
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
  Hive.registerAdapter(EstabelecimentoModelAdapter());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initialiseHive();

  //Box<EstabelecimentoModel> estabelecimentoBox = await Hive.openBox<EstabelecimentoModel>('Estabelecimento');
  //estabelecimentoBox.add(EstabelecimentoModel(nome: 'Dyonnim Lanches', descricao: 'Melhor lanchonete da cidade'));

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
        '/': GetRoute(page: HomeView()),
        '/destaque': GetRoute(page: DetailView()),
      },
      //home: HomeView(),
    );
    
  }
}
