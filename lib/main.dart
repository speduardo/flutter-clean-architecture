import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/core/themes/app.theme.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/detail.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/guia.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/guiadetail.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/hero.view.dart';
import 'package:fluttercleanarchitecture/features/reminder/presentation/views/reminder.view.dart';
import 'package:get/get.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/home.view.dart';

void main() {
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
